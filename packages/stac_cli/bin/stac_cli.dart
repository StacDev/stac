import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:dotenv/dotenv.dart';
import 'package:stac_cli/src/commands/auth/login_command.dart';
import 'package:stac_cli/src/commands/auth/logout_command.dart';
import 'package:stac_cli/src/commands/auth/status_command.dart';
import 'package:stac_cli/src/commands/build_command.dart';
import 'package:stac_cli/src/commands/deploy_command.dart';
import 'package:stac_cli/src/commands/init_command.dart';
import 'package:stac_cli/src/commands/project_command.dart';
import 'package:stac_cli/src/commands/upgrade_command.dart';
import 'package:stac_cli/src/config/env.dart';
import 'package:stac_cli/src/exceptions/stac_exception.dart';
import 'package:stac_cli/src/services/config_service.dart';
import 'package:stac_cli/src/utils/console_logger.dart';
import 'package:stac_cli/src/utils/file_utils.dart';
import 'package:stac_cli/src/version.dart';

String get version => currentEnvironment == Environment.dev
    ? '$packageVersion-dev'
    : packageVersion;

const _dotenvKeys = <String>[
  'STAC_BASE_API_URL',
  'STAC_GOOGLE_CLIENT_ID',
  'STAC_GOOGLE_CLIENT_SECRET',
  'STAC_FIREBASE_API_KEY',
];

Map<String, String> _loadDotEnvOverrides() {
  final dotEnv = DotEnv(quiet: true);
  final configDir = FileUtils.configDirectory;
  switch (currentEnvironment) {
    case Environment.dev:
      dotEnv.load(['$configDir/.env.dev']);
      break;
    case Environment.prod:
      dotEnv.load(['$configDir/.env']);
      break;
  }

  final overrides = <String, String>{};

  for (final key in _dotenvKeys) {
    final value = dotEnv[key];
    if (value != null && value.trim().isNotEmpty) {
      overrides[key] = value;
    }
  }

  return overrides;
}

void main(List<String> arguments) async {
  configureEnvironment(_loadDotEnvOverrides());

  // Initialize configuration service
  await ConfigService.instance.initialize();

  final runner =
      CommandRunner<int>('stac', 'Stac CLI - Manage your Stac SDUI projects')
        ..addCommand(LoginCommand())
        ..addCommand(LogoutCommand())
        ..addCommand(StatusCommand())
        ..addCommand(InitCommand())
        ..addCommand(ProjectCommand())
        ..addCommand(BuildCommand())
        ..addCommand(DeployCommand())
        ..addCommand(UpgradeCommand());

  // Add global flags
  runner.argParser.addFlag(
    'verbose',
    abbr: 'v',
    negatable: false,
    help: 'Show additional command output.',
  );

  runner.argParser.addFlag(
    'version',
    negatable: false,
    help: 'Print the tool version.',
  );

  try {
    // Parse arguments and check for global flags
    final argResults = runner.argParser.parse(arguments);

    if (argResults['version'] as bool) {
      print('stac_cli version: $version');
      exit(0);
    }

    if (argResults['verbose'] as bool) {
      ConsoleLogger.setVerbose(true);
    }

    // Run the command
    final exitCode = await runner.run(arguments) ?? 0;
    exit(exitCode);
  } on UsageException catch (e) {
    ConsoleLogger.error(e.message);
    print('');
    print(e.usage);
    exit(1);
  } on StacException catch (e) {
    ConsoleLogger.error(e.message);
    exit(e.exitCode ?? 1);
  } catch (e) {
    ConsoleLogger.error('Unexpected error: $e');
    exit(1);
  }
}
