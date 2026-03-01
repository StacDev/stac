import '../services/upgrade_service.dart';
import '../utils/console_logger.dart';
import 'base_command.dart';

/// Command for upgrading the Stac CLI to the latest version
class UpgradeCommand extends BaseCommand {
  final UpgradeService _upgradeService = UpgradeService();

  @override
  String get name => 'upgrade';

  @override
  String get description => 'Upgrade Stac CLI to the latest version';

  UpgradeCommand() {
    argParser.addOption(
      'version',
      help: 'Specific version to install (e.g., 1.2.0)',
    );
    argParser.addFlag(
      'force',
      abbr: 'f',
      negatable: false,
      help: 'Force upgrade even if already on latest version',
    );
  }

  @override
  Future<int> execute() async {
    final specificVersion = argResults?['version'] as String?;
    final force = argResults?['force'] as bool? ?? false;

    ConsoleLogger.info('Checking for updates...');

    try {
      // Check for updates
      final checkResult = await _upgradeService.checkForUpdates();

      final targetVersion = specificVersion ?? checkResult.latestVersion;

      ConsoleLogger.info('Current version: ${checkResult.currentVersion}');
      ConsoleLogger.info('Latest version: ${checkResult.latestVersion}');

      if (specificVersion != null) {
        ConsoleLogger.info('Requested version: $specificVersion');
      }

      // Check if upgrade is needed
      if (!force && checkResult.currentVersion == targetVersion) {
        ConsoleLogger.success(
          '✓ Already on the latest version (${checkResult.currentVersion})',
        );
        return 0;
      }

      if (!force && !checkResult.updateAvailable && specificVersion == null) {
        ConsoleLogger.success(
          '✓ Already on the latest version (${checkResult.currentVersion})',
        );
        return 0;
      }

      ConsoleLogger.info('Upgrading to version $targetVersion...');

      // Get download URL
      String downloadUrl;
      if (specificVersion != null) {
        downloadUrl = await _upgradeService.getDownloadUrlForVersion(
          specificVersion,
        );
      } else {
        downloadUrl = checkResult.downloadUrl;
      }

      // Perform upgrade
      await _upgradeService.upgradeTo(
        version: targetVersion,
        downloadUrl: downloadUrl,
      );

      ConsoleLogger.success(
        '✓ Successfully upgraded to version $targetVersion',
      );
      ConsoleLogger.info('Run "stac --version" to verify');

      return 0;
    } catch (e) {
      ConsoleLogger.error('Failed to upgrade: $e');
      return 1;
    }
  }
}
