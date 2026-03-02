import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:stac_cli/src/exceptions/stac_exception.dart';
import 'package:stac_cli/src/utils/oauth_pkce.dart';

import '../config/env.dart';
import '../exceptions/auth_exception.dart';
import '../models/auth_token.dart';
import '../services/config_service.dart';
import '../utils/console_logger.dart';

/// Service for handling Google OAuth authentication
class AuthService {
  // Production OAuth credentials (provided by Stac team)
  // Note: In production, these would be the actual Stac OAuth app credentials
  static String get _clientId => env.googleOAuthClientId;
  static const List<String> _scopes = ['openid', 'email', 'profile'];

  static String get _firebaseApiKey => env.firebaseWebApiKey;

  final ConfigService _configService = ConfigService.instance;

  /// Get the client ID to use
  String get clientId => _clientId;

  /// Get the client secret to use (null for PKCE)
  String? get clientSecret => env.googleOAuthClientSecret;

  /// Start the OAuth login flow
  Future<void> login() async {
    try {
      // Check if already logged in
      final existingToken = await _configService.getAuthToken();
      if (existingToken != null && !existingToken.isExpired) {
        // Try to get user email from the token
        final email = _extractEmailFromToken(existingToken.accessToken);
        if (email != null) {
          ConsoleLogger.info('Already logged in as $email');
        } else {
          ConsoleLogger.info('Already logged in');
        }
        ConsoleLogger.info(
          'Run "stac logout" first if you want to login with a different account.',
        );
        return;
      }

      ConsoleLogger.info('Starting Google OAuth login...');

      // Start local server first to get the dynamic port and auth code
      final serverResult = await _startCallbackServer();
      final authCode = serverResult['code'] as String;
      final redirectUri = serverResult['redirectUri'] as String;
      final codeVerifier = serverResult['codeVerifier'] as String;

      // Exchange authorization code for access token
      await _exchangeCodeForToken(authCode, redirectUri, codeVerifier);

      // Get the email from the newly created token
      final newToken = await _configService.getAuthToken();
      final email = newToken != null
          ? _extractEmailFromToken(newToken.accessToken)
          : null;

      if (email != null) {
        ConsoleLogger.success('Successfully logged in as $email!');
      } else {
        ConsoleLogger.success('Successfully logged in!');
      }
    } catch (e) {
      throw AuthenticationFailedException('Login failed: $e');
    }
  }

  /// Logout and clear stored tokens
  Future<void> logout() async {
    try {
      await _configService.clearAuthToken();
      ConsoleLogger.success('Successfully logged out!');
    } catch (e) {
      throw AuthException('Logout failed: $e');
    }
  }

  /// Refresh the authentication token if it's expired or expiring soon
  Future<AuthToken?> refreshTokenIfNeeded() async {
    try {
      final token = await _configService.getAuthToken();
      if (token == null) {
        return null;
      }

      // If token is not expired and not expiring soon, return as is
      if (!token.isExpired && !token.isExpiringSoon) {
        return token;
      }

      // If we have a refresh token, try to refresh
      if (token.refreshToken != null) {
        try {
          return await _refreshToken(token.refreshToken!);
        } catch (e) {
          ConsoleLogger.debug('Token refresh failed: $e');
          // Clear the invalid token and force re-login
          await _configService.clearAuthToken();
          throw StacException(
            'Authentication required. Please run "stac login"',
          );
        }
      }

      // No refresh token available, user needs to login again
      throw StacException('Authentication required. Please run "stac login"');
    } catch (e) {
      if (e is StacException) {
        rethrow;
      }
      ConsoleLogger.debug('Authentication check failed: $e');
      throw StacException('Authentication required. Please run "stac login"');
    }
  }

  /// Refresh the token using the refresh token
  Future<AuthToken> _refreshToken(String refreshToken) async {
    final client = HttpClient();
    try {
      final uri = Uri.parse(
        'https://securetoken.googleapis.com/v1/token?key=$_firebaseApiKey',
      );

      final request = await client.postUrl(uri);
      request.headers.contentType = ContentType('application', 'json');

      final payload = {
        'grant_type': 'refresh_token',
        'refresh_token': refreshToken,
      };
      request.write(json.encode(payload));

      final response = await request.close();
      final responseBody = await response.transform(utf8.decoder).join();

      if (response.statusCode != 200) {
        ConsoleLogger.debug(
          'Token refresh failed with status ${response.statusCode}',
        );
        throw AuthenticationFailedException(
          'Token refresh failed (${response.statusCode})',
        );
      }

      final data = json.decode(responseBody) as Map<String, dynamic>;
      final newIdToken = data['id_token'] as String?;
      final newRefreshToken = data['refresh_token'] as String?;

      if (newIdToken == null) {
        ConsoleLogger.debug('No id_token in refresh response: $data');
        throw const AuthenticationFailedException(
          'No id_token in refresh response',
        );
      }

      final expiresAt = _parseTokenExpiration(newIdToken);

      final authToken = AuthToken(
        accessToken: newIdToken,
        refreshToken:
            newRefreshToken ??
            refreshToken, // Keep old refresh token if new one not provided
        expiresAt: expiresAt,
        scopes: _scopes,
      );

      await _configService.storeAuthToken(authToken);
      ConsoleLogger.debug('Token refreshed successfully');
      return authToken;
    } catch (e) {
      ConsoleLogger.debug('Token refresh error: $e');
      rethrow;
    } finally {
      client.close();
    }
  }

  /// Get current authentication status
  Future<void> status() async {
    try {
      final isAuthenticated = await _configService.isAuthenticated();

      if (isAuthenticated) {
        final token = await _configService.getAuthToken();
        ConsoleLogger.success('✓ Authenticated');
        if (token != null) {
          // Try to extract and display email
          final email = _extractEmailFromToken(token.accessToken);
          if (email != null) {
            ConsoleLogger.info('Logged in as: $email');
          }

          final now = DateTime.now();
          final timeUntilExpiry = token.expiresAt.difference(now);

          if (token.refreshToken != null) {
            ConsoleLogger.info(
              'Session token expires in: ${timeUntilExpiry.inHours}h ${timeUntilExpiry.inMinutes % 60}m',
            );
            ConsoleLogger.info(
              'You will remain logged in (tokens refresh automatically)',
            );
          } else {
            ConsoleLogger.info(
              'Time until expiry: ${timeUntilExpiry.inHours}h ${timeUntilExpiry.inMinutes % 60}m',
            );
            ConsoleLogger.warning(
              'No refresh token available - you will need to re-login after expiry',
            );
          }

          // Show additional debug info
          ConsoleLogger.debug(
            'Token expires at: ${token.expiresAt.toIso8601String()}',
          );
          ConsoleLogger.debug(
            'Has refresh token: ${token.refreshToken != null}',
          );
          ConsoleLogger.debug('Is expired: ${token.isExpired}');
          ConsoleLogger.debug('Is expiring soon: ${token.isExpiringSoon}');
        }
      } else {
        ConsoleLogger.info(
          'Not authenticated. Run "stac login" to authenticate.',
        );
      }
    } catch (e) {
      throw AuthException('Failed to check status: $e');
    }
  }

  /// Start a local server to receive the OAuth callback
  Future<Map<String, dynamic>> _startCallbackServer() async {
    final completer = Completer<String>();
    HttpServer? server;

    try {
      // Bind to port 0 to get any available port from the OS
      server = await HttpServer.bind('localhost', 0);
      final port = server.port;
      final redirectUri = 'http://localhost:$port/auth/callback';

      ConsoleLogger.debug('Started callback server on port $port');

      // Generate OAuth URL with the dynamic redirect URI
      final state = generateSecureState();
      final codeVerifier = generateCodeVerifier();
      final codeChallenge = await createCodeChallenge(codeVerifier);
      final authUrl = Uri.https('accounts.google.com', '/o/oauth2/auth', {
        'client_id': clientId,
        'redirect_uri': redirectUri,
        'scope': _scopes.join(' '),
        'response_type': 'code',
        'state': state,
        'code_challenge': codeChallenge,
        'code_challenge_method': 'S256',
      });

      ConsoleLogger.info('Please visit the following URL to authenticate:');
      ConsoleLogger.plain('');
      ConsoleLogger.plain(authUrl.toString());
      ConsoleLogger.plain('');

      // Try to open browser automatically
      try {
        if (Platform.isMacOS) {
          await Process.run('open', [authUrl.toString()]);
          ConsoleLogger.info('Opening browser for authentication...');
        } else if (Platform.isLinux) {
          await Process.run('xdg-open', [authUrl.toString()]);
          ConsoleLogger.info('Opening browser for authentication...');
        } else if (Platform.isWindows) {
          await Process.run('rundll32', [
            'url.dll,FileProtocolHandler',
            authUrl.toString(),
          ], runInShell: false);
          ConsoleLogger.info('Opening browser for authentication...');
        }
      } catch (e) {
        ConsoleLogger.warning(
          'Could not open browser automatically. Please copy the URL above.',
        );
      }

      ConsoleLogger.info('Waiting for authentication callback...');

      server.listen((request) async {
        final uri = request.uri;

        if (uri.path == '/auth/callback') {
          final code = uri.queryParameters['code'];
          final error = uri.queryParameters['error'];
          final callbackState = uri.queryParameters['state'];

          if (error != null) {
            request.response
              ..statusCode = 400
              ..write('Authentication failed: $error')
              ..close();
            if (!completer.isCompleted) {
              completer.completeError(AuthenticationFailedException(error));
            }
            return;
          }

          if (callbackState == null || callbackState != state) {
            request.response
              ..statusCode = 400
              ..write('Authentication failed: invalid OAuth state')
              ..close();
            if (!completer.isCompleted) {
              completer.completeError(
                const AuthenticationFailedException(
                  'Authentication failed: invalid OAuth state',
                ),
              );
            }
            return;
          }

          if (code != null) {
            request.response
              ..statusCode = 200
              ..write('Authentication successful! You can close this window.')
              ..close();
            if (!completer.isCompleted) {
              completer.complete(code);
            }
            return;
          }
        }

        request.response
          ..statusCode = 404
          ..write('Not found')
          ..close();
      });

      final authCode = await completer.future.timeout(
        const Duration(minutes: 5),
        onTimeout: () {
          throw AuthenticationFailedException('Authentication timeout');
        },
      );

      return {
        'code': authCode,
        'redirectUri': redirectUri,
        'codeVerifier': codeVerifier,
      };
    } finally {
      await server?.close();
    }
  }

  /// Exchange authorization code for access token
  Future<void> _exchangeCodeForToken(
    String authCode,
    String redirectUri,
    String codeVerifier,
  ) async {
    final client = HttpClient();
    try {
      final request = await client.postUrl(
        Uri.parse('https://oauth2.googleapis.com/token'),
      );

      request.headers.contentType = ContentType(
        'application',
        'x-www-form-urlencoded',
      );

      // Build OAuth token exchange request with dynamic redirect URI
      final bodyParams = [
        'code=${Uri.encodeQueryComponent(authCode)}',
        'client_id=${Uri.encodeQueryComponent(clientId)}',
        'redirect_uri=${Uri.encodeQueryComponent(redirectUri)}',
        'grant_type=authorization_code',
        'code_verifier=${Uri.encodeQueryComponent(codeVerifier)}',
      ];

      // Only add client_secret if available (for development)
      if (clientSecret != null) {
        bodyParams.add(
          'client_secret=${Uri.encodeQueryComponent(clientSecret!)}',
        );
      }

      final body = bodyParams.join('&');

      request.write(body);

      final response = await request.close();
      final responseBody = await response.transform(utf8.decoder).join();

      if (response.statusCode != 200) {
        throw AuthenticationFailedException(
          'Token exchange failed with status ${response.statusCode}',
        );
      }

      final data = json.decode(responseBody) as Map<String, dynamic>;

      // Prefer Google ID token (OpenID) to sign in to Firebase and get a Firebase ID token
      final googleIdToken = data['id_token'] as String?;
      if (googleIdToken == null) {
        throw const AuthenticationFailedException(
          'Missing id_token from Google OAuth response',
        );
      }

      final firebaseAuth = await _signInWithFirebase(googleIdToken);

      // Parse the Firebase ID token to get its actual expiration time
      final idToken = firebaseAuth['idToken'] as String;
      final expiresAt = _parseTokenExpiration(idToken);

      final authToken = AuthToken(
        // Store Firebase ID token as accessToken to be used for Authorization header
        accessToken: idToken,
        refreshToken: firebaseAuth['refreshToken'] as String?,
        expiresAt: expiresAt,
        scopes: _scopes,
      );

      await _configService.storeAuthToken(authToken);
    } catch (e) {
      throw AuthenticationFailedException('Token exchange failed: $e');
    } finally {
      client.close();
    }
  }

  /// Parse JWT token to extract expiration time
  DateTime _parseTokenExpiration(String token) {
    try {
      // JWT tokens have 3 parts separated by dots: header.payload.signature
      final parts = token.split('.');
      if (parts.length != 3) {
        throw const AuthenticationFailedException('Invalid JWT token format');
      }

      // Decode the payload (second part)
      final payload = parts[1];

      // Add padding if needed for base64 decoding
      final paddedPayload = payload.padRight(
        payload.length + (4 - payload.length % 4) % 4,
        '=',
      );

      final decodedPayload = utf8.decode(base64.decode(paddedPayload));
      final payloadJson = json.decode(decodedPayload) as Map<String, dynamic>;

      // Extract expiration time (exp claim is in seconds since epoch)
      final exp = payloadJson['exp'] as int?;
      if (exp == null) {
        throw const AuthenticationFailedException(
          'Token missing expiration claim',
        );
      }

      final expirationTime = DateTime.fromMillisecondsSinceEpoch(exp * 1000);
      ConsoleLogger.debug(
        'Parsed token expiration: ${expirationTime.toIso8601String()}',
      );
      ConsoleLogger.debug(
        'Token expires in: ${expirationTime.difference(DateTime.now()).inMinutes} minutes',
      );
      return expirationTime;
    } catch (e) {
      // If parsing fails, fall back to a short expiration time
      ConsoleLogger.debug(
        'Failed to parse token expiration, using 1 hour fallback: $e',
      );
      return DateTime.now().add(const Duration(hours: 1));
    }
  }

  /// Extract email from JWT token
  String? _extractEmailFromToken(String token) {
    try {
      // JWT tokens have 3 parts separated by dots: header.payload.signature
      final parts = token.split('.');
      if (parts.length != 3) {
        return null;
      }

      // Decode the payload (second part)
      final payload = parts[1];

      // Add padding if needed for base64 decoding
      final paddedPayload = payload.padRight(
        payload.length + (4 - payload.length % 4) % 4,
        '=',
      );

      final decodedPayload = utf8.decode(base64.decode(paddedPayload));
      final payloadJson = json.decode(decodedPayload) as Map<String, dynamic>;

      // Extract email from the token (could be in 'email' or 'firebase.identities.email' field)
      return payloadJson['email'] as String?;
    } catch (e) {
      ConsoleLogger.debug('Failed to extract email from token: $e');
      return null;
    }
  }

  /// Sign in to Firebase using Google ID token to obtain a Firebase ID token
  Future<Map<String, dynamic>> _signInWithFirebase(String googleIdToken) async {
    final client = HttpClient();
    try {
      final uri = Uri.parse(
        'https://identitytoolkit.googleapis.com/v1/accounts:signInWithIdp?key=$_firebaseApiKey',
      );

      final request = await client.postUrl(uri);
      request.headers.contentType = ContentType('application', 'json');

      final payload = {
        'postBody': 'id_token=$googleIdToken&providerId=google.com',
        'requestUri': 'http://localhost',
        'returnIdpCredential': true,
        'returnSecureToken': true,
      };
      request.write(json.encode(payload));

      final response = await request.close();
      final responseBody = await response.transform(utf8.decoder).join();

      if (response.statusCode != 200) {
        throw AuthenticationFailedException(
          'Firebase signInWithIdp failed (${response.statusCode})',
        );
      }

      final data = json.decode(responseBody) as Map<String, dynamic>;
      if (data['idToken'] == null) {
        throw const AuthenticationFailedException(
          'No Firebase idToken in response',
        );
      }
      return data;
    } finally {
      client.close();
    }
  }
}
