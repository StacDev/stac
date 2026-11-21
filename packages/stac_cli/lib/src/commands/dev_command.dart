import 'package:stac_cli/src/services/dev_service.dart';
import 'package:stac_cli/src/utils/console_logger.dart';

import 'base_command.dart';

class DevCommand extends BaseCommand {
  DevCommand({DevService? devService})
    : _devService = devService ?? DevService() {
    argParser.addOption(
      'project',
      abbr: 'p',
      help: 'Project directory (defaults to current directory)',
    );
    argParser.addOption(
      'host',
      help: 'Host address for the local development server',
      defaultsTo: '127.0.0.1',
    );
    argParser.addOption(
      'port',
      help: 'Port for the local development server',
      defaultsTo: '45700',
    );
    argParser.addFlag(
      'skip-build',
      help: 'Use existing build files without running the initial build',
      negatable: false,
    );
    argParser.addFlag(
      'watch',
      help: 'Watch Stac source files and rebuild on save',
      defaultsTo: true,
    );
  }

  final DevService _devService;

  @override
  String get name => 'dev';

  @override
  String get description =>
      'Run a local Stac development server for screens and themes';

  @override
  bool get requiresProject => true;

  @override
  Future<int> execute() async {
    final projectPath = argResults?['project'] as String?;
    final host = argResults?['host'] as String? ?? '127.0.0.1';
    final portValue = argResults?['port'] as String? ?? '45700';
    final port = int.tryParse(portValue);
    final skipBuild = argResults?['skip-build'] as bool? ?? false;
    final watch = argResults?['watch'] as bool? ?? true;

    if (port == null || port < 0 || port > 65535) {
      ConsoleLogger.error('Invalid port: $portValue');
      return 1;
    }

    try {
      await _devService.serve(
        projectPath: projectPath,
        host: host,
        port: port,
        skipBuild: skipBuild,
        watch: watch,
      );
      return 0;
    } catch (e) {
      ConsoleLogger.error('Dev failed: $e');
      return 1;
    }
  }
}
