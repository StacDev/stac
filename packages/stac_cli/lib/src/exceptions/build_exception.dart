import 'stac_exception.dart';

/// Exception thrown for build-related errors
class BuildException extends StacException {
  const BuildException(super.message, {super.exitCode = 1, super.cause});
}

/// Exception thrown when Dart to JSON conversion fails
class ConversionException extends BuildException {
  const ConversionException(String message, {dynamic cause})
    : super('Dart to JSON conversion failed: $message', cause: cause);
}

/// Exception thrown when SDUI validation fails
class ValidationException extends BuildException {
  const ValidationException(String message)
    : super('SDUI validation failed: $message');
}
