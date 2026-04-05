import 'package:test/test.dart';
import 'package:args/command_runner.dart';
import 'package:stac_cli/src/commands/build_command.dart';
import 'package:stac_cli/src/commands/init_command.dart';
import 'package:stac_cli/src/commands/deploy_command.dart';
import 'package:stac_cli/src/config/env.dart';

/// Test suite for verifying core Stac CLI commands.
void main() {
  group('CLI Commands', () {
    late CommandRunner<int> runner;

    setUp(() {
      // Initialize environment with mock values to satisfy required checks in services.
      // This allows testing command configuration without needing real API keys.
      configureEnvironment({
        'STAC_BASE_API_URL': 'https://api.test.stac.dev',
        'STAC_GOOGLE_CLIENT_ID': 'test-client-id',
        'STAC_FIREBASE_API_KEY': 'test-api-key',
      });

      runner = CommandRunner<int>('stac', 'Stac CLI test runner');
      runner.addCommand(BuildCommand());
      runner.addCommand(InitCommand());
      runner.addCommand(DeployCommand());
    });

    test('build command has correct name and description', () {
      final command = runner.commands['build'];
      expect(command, isNotNull, reason: 'BuildCommand should be registered');
      expect(command!.name, equals('build'));
      expect(command.description, isNotEmpty);
    });

    test('init command has correct name and description', () {
      final command = runner.commands['init'];
      expect(command, isNotNull, reason: 'InitCommand should be registered');
      expect(command!.name, equals('init'));
      expect(command.description, isNotEmpty);
    });

    test('deploy command has correct name and description', () {
      final command = runner.commands['deploy'];
      expect(command, isNotNull, reason: 'DeployCommand should be registered');
      expect(command!.name, equals('deploy'));
      expect(command.description, isNotEmpty);
    });
  });
}
