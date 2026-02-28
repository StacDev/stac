import 'package:args/command_runner.dart';

import '../exceptions/auth_exception.dart';
import '../exceptions/stac_exception.dart';
import '../services/auth_service.dart';
import '../utils/console_logger.dart';

/// Base class for all Stac CLI commands
abstract class BaseCommand extends Command<int> {
  final AuthService _authService = AuthService();

  /// Whether this command requires authentication
  bool get requiresAuth => false;

  /// Whether this command requires a Stac project
  bool get requiresProject => false;

  @override
  Future<int> run() async {
    try {
      // Check authentication if required
      if (requiresAuth) {
        await _checkAuthentication();
      }

      // Run the actual command
      return await execute();
    } on StacException catch (e) {
      ConsoleLogger.error(e.message);
      return e.exitCode ?? 1;
    } catch (e) {
      ConsoleLogger.error('Unexpected error: $e');
      return 1;
    }
  }

  /// Execute the command logic
  Future<int> execute();

  /// Check if user is authenticated (and refresh token if needed)
  Future<void> _checkAuthentication() async {
    try {
      // Try to refresh the token if needed
      final token = await _authService.refreshTokenIfNeeded();
      if (token == null) {
        throw const NotAuthenticatedException();
      }
    } catch (e) {
      if (e is StacException) {
        throw const NotAuthenticatedException();
      }
      rethrow;
    }
  }

  /// Helper to get verbose flag from global results
  bool get verbose {
    final results = globalResults;
    if (results != null && results.options.contains('verbose')) {
      return results['verbose'] as bool? ?? false;
    }
    return false;
  }
}
