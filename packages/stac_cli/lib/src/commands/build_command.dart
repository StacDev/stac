import 'base_command.dart';
import '../services/build_service.dart';
import '../utils/console_logger.dart';

/// Command for building Dart to JSON
class BuildCommand extends BaseCommand {
  final BuildService _buildService = BuildService();

  @override
  String get name => 'build';

  @override
  String get description =>
      'Convert Dart widget definitions to JSON for Stac SDUI';

  @override
  bool get requiresProject => true;

  BuildCommand() {
    argParser.addOption(
      'project',
      abbr: 'p',
      help: 'Project directory (defaults to current directory)',
    );

    argParser.addFlag(
      'validate',
      help:
          'Check {{ }} expressions and conditions in the generated JSON '
          '(enabled by default)',
      defaultsTo: true,
    );

    argParser.addFlag(
      'strict',
      help: 'Fail the build when an expression or condition is invalid',
      negatable: false,
    );
  }

  @override
  Future<int> execute() async {
    final projectPath = argResults?['project'] as String?;
    final validate = argResults?['validate'] as bool? ?? true;
    final strict = argResults?['strict'] as bool? ?? false;

    if (verbose) {
      ConsoleLogger.debug('Starting build process...');
    }

    try {
      await _buildService.build(
        projectPath: projectPath,
        validate: validate,
        strict: strict,
      );
      return 0;
    } catch (e) {
      ConsoleLogger.error('Build failed: $e');
      return 1;
    }
  }
}
