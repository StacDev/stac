import 'package:dio/dio.dart';
import '../config/env.dart';

import '../exceptions/stac_exception.dart';
import '../services/auth_service.dart';
import '../utils/console_logger.dart';

/// HTTP client wrapper for making API requests to Stac cloud services
class HttpClientService {
  static HttpClientService? _instance;
  late final Dio _dio;
  final AuthService _authService = AuthService();

  /// Singleton instance
  static HttpClientService get instance {
    _instance ??= HttpClientService._();
    return _instance!;
  }

  HttpClientService._() {
    _dio = Dio(
      BaseOptions(
        baseUrl: env.baseApiUrl,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        headers: {'Content-Type': 'application/json'},
      ),
    );

    // Add request interceptor for authentication
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          // Try to refresh token if needed and add auth header
          final token = await _authService.refreshTokenIfNeeded();
          if (token != null) {
            options.headers['Authorization'] = 'Bearer ${token.accessToken}';
            ConsoleLogger.debug('Auth header attached');
          }
          ConsoleLogger.debug('HTTP ${options.method} → ${options.uri}');
          handler.next(options);
        },
        onError: (error, handler) {
          // Handle common HTTP errors
          if (error.response?.statusCode == 401) {
            throw StacException(
              'Authentication required. Please run "stac login"',
            );
          } else if (error.response?.statusCode == 403) {
            throw StacException('Permission denied');
          } else if (error.response?.statusCode == 404) {
            throw StacException('Resource not found');
          }
          final status = error.response?.statusCode;
          final uri = error.requestOptions.uri;
          final reason =
              error.message ?? error.error?.toString() ?? 'Unknown error';
          handler.next(
            DioException(
              requestOptions: error.requestOptions,
              error: StacException(
                'HTTP request failed (${status ?? 'no-status'}) for $uri: $reason',
              ),
            ),
          );
        },
      ),
    );
  }

  /// Make a GET request
  Future<Response> get(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await _dio.get(path, queryParameters: queryParameters);
      return response;
    } on DioException catch (e) {
      final underlying = e.error;
      if (underlying is StacException) {
        throw underlying;
      }
      final status = e.response?.statusCode;
      final uri = e.requestOptions.uri;
      throw StacException(
        'HTTP request failed (${status ?? 'no-status'}) for $uri: ${e.message ?? underlying?.toString() ?? 'Unknown error'}',
      );
    }
  }

  /// Make a POST request
  Future<Response> post(String path, {dynamic data}) async {
    try {
      return await _dio.post(path, data: data);
    } on DioException catch (e) {
      final underlying = e.error;
      if (underlying is StacException) {
        throw underlying;
      }
      final status = e.response?.statusCode;
      final uri = e.requestOptions.uri;
      throw StacException(
        'HTTP request failed (${status ?? 'no-status'}) for $uri: ${e.message ?? underlying?.toString() ?? 'Unknown error'}',
      );
    } catch (e) {
      throw StacException('HTTP request failed: $e');
    }
  }

  /// Make a PUT request
  Future<Response> put(String path, {dynamic data}) async {
    try {
      return await _dio.put(path, data: data);
    } on DioException catch (e) {
      final underlying = e.error;
      if (underlying is StacException) {
        throw underlying;
      }
      final status = e.response?.statusCode;
      final uri = e.requestOptions.uri;
      throw StacException(
        'HTTP request failed (${status ?? 'no-status'}) for $uri: ${e.message ?? underlying?.toString() ?? 'Unknown error'}',
      );
    }
  }

  /// Make a DELETE request
  Future<Response> delete(String path) async {
    try {
      return await _dio.delete(path);
    } on DioException catch (e) {
      final underlying = e.error;
      if (underlying is StacException) {
        throw underlying;
      }
      final status = e.response?.statusCode;
      final uri = e.requestOptions.uri;
      throw StacException(
        'HTTP request failed (${status ?? 'no-status'}) for $uri: ${e.message ?? underlying?.toString() ?? 'Unknown error'}',
      );
    }
  }
}
