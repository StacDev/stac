import 'stac_exception.dart';

/// Exception thrown for authentication-related errors
class AuthException extends StacException {
  const AuthException(super.message, {super.exitCode = 1, super.cause});
}

/// Exception thrown when user is not authenticated
class NotAuthenticatedException extends AuthException {
  const NotAuthenticatedException()
    : super('Not authenticated. Please run "stac login" first.');
}

/// Exception thrown when authentication fails
class AuthenticationFailedException extends AuthException {
  const AuthenticationFailedException([String? reason])
    : super('Authentication failed${reason != null ? ': $reason' : ''}');
}
