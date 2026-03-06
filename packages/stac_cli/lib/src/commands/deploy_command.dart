import '../services/build_service.dart';
import '../services/deploy_service.dart';
import '../utils/console_logger.dart';
import 'base_command.dart';

/// Command for deploying JSON files to the cloud
class DeployCommand extends BaseCommand {
  final BuildService _buildService = BuildService();
  final DeployService _deployService = DeployService();

  @override
  String get name => 'deploy';

  @override
  String get description => 'Deploy Stac widgets to the cloud';

  @override
  bool get requiresAuth => true;

  @override
  bool get requiresProject => true;

  DeployCommand() {
    argParser.addOption(
      'project',
      abbr: 'p',
      help: 'Project directory (defaults to current directory)',
    );
    argParser.addFlag(
      'skip-build',
      help: 'Skip building before deployment (deploy existing files)',
      negatable: false,
    );
  }

  @override
  Future<int> execute() async {
    final projectPath = argResults?['project'] as String?;
    final skipBuild = argResults?['skip-build'] as bool? ?? false;

    try {
      // Build before deploying unless --skip-build is specified
      if (!skipBuild) {
        ConsoleLogger.info('Building project before deployment...');

        try {
          await _buildService.build(projectPath: projectPath);
          ConsoleLogger.info('Build completed. Starting deployment...');
        } catch (buildError) {
          ConsoleLogger.error('Build failed, aborting deployment.');
          ConsoleLogger.error('Error: $buildError');
          return 1;
        }
      } else {
        if (verbose) {
          ConsoleLogger.debug('Skipping build, deploying existing files...');
        }
      }

      // Deploy the built files
      await _deployService.deploy(projectPath: projectPath);
      return 0;
    } catch (e) {
      ConsoleLogger.error('Deployment failed: $e');
      return 1;
    }
  }
}
