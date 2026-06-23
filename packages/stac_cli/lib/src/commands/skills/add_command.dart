import 'dart:convert';
import 'dart:io';

import 'package:archive/archive_io.dart';
import 'package:dio/dio.dart';
import 'package:path/path.dart' as path;

import '../../utils/console_logger.dart';
import '../base_command.dart';

/// Command to add Stac AI agent skills
class AddCommand extends BaseCommand {
  @override
  String get name => 'add';

  @override
  String get description => 'Add Stac AI agent skills to your project';

  @override
  bool get requiresAuth => false;

  /// Optional target directory; defaults to [Directory.current].
  final String? targetDirectory;

  AddCommand({this.targetDirectory});

  @override
  Future<int> execute() async {
    String repoUrl = 'https://github.com/StacDev/stac';

    if (argResults?.rest.isNotEmpty == true) {
      repoUrl = argResults!.rest.first;
    }

    if (!repoUrl.contains('github.com')) {
      ConsoleLogger.error('Currently only github.com URLs are supported.');
      return 1;
    }

    // Extract owner/repo
    final uri = Uri.parse(repoUrl);
    final segments = uri.pathSegments;
    if (segments.length < 2) {
      ConsoleLogger.error('Invalid GitHub URL format.');
      return 1;
    }

    final owner = segments[0];
    final repo = segments[1].replaceAll('.git', '');

    final zipUrl = 'https://github.com/$owner/$repo/archive/HEAD.zip';

    ConsoleLogger.info('Fetching skills from $repoUrl...');

    final tempDir = await Directory.systemTemp.createTemp('stac_skills_');
    try {
      final dio = Dio();
      final zipFile = File(path.join(tempDir.path, 'repo.zip'));

      await dio.download(zipUrl, zipFile.path);

      // Extract ZIP
      final archive = ZipDecoder().decodeBytes(zipFile.readAsBytesSync());
      final extractDir = Directory(path.join(tempDir.path, 'extracted'));
      await extractArchiveToDisk(archive, extractDir.path);

      // Find skills/catalog.json
      // The extracted folder usually has a root folder named <repo>-<branch>
      final rootDirs = extractDir.listSync().whereType<Directory>().toList();
      if (rootDirs.isEmpty) {
        ConsoleLogger.error('Empty repository archive.');
        return 1;
      }

      final repoRoot = rootDirs.first;
      ConsoleLogger.info('Extracted root: ${repoRoot.path}');

      final catalogFile = File(
        path.join(repoRoot.path, 'skills', 'catalog.json'),
      );
      ConsoleLogger.info('Looking for catalog at: ${catalogFile.path}');

      if (!await catalogFile.exists()) {
        ConsoleLogger.error('skills/catalog.json not found in repository.');

        ConsoleLogger.info('Contents of extracted:');
        for (var e in extractDir.listSync(recursive: true)) {
          ConsoleLogger.info(e.path);
        }

        return 1;
      }

      // Parse catalog.json
      final catalogContent = await catalogFile.readAsString();
      final List<dynamic> catalog = jsonDecode(catalogContent);

      final installDir = targetDirectory ?? Directory.current.path;
      final targetAgentsDir = Directory(
        path.join(installDir, '.agents', 'skills'),
      );
      if (!await targetAgentsDir.exists()) {
        await targetAgentsDir.create(recursive: true);
      }

      // Canonical boundary paths for security checks
      final repoRootCanonical = path.canonicalize(repoRoot.path);
      final targetCanonical = path.canonicalize(targetAgentsDir.path);

      int installedCount = 0;
      for (final skill in catalog) {
        if (skill is! Map) {
          ConsoleLogger.warning(
            'Skipping invalid catalog entry (not a map): $skill',
          );
          continue;
        }
        final skillName = skill['name'];
        final skillPath = skill['path'];

        if (skillName is! String || skillPath is! String) {
          ConsoleLogger.warning('Skipping invalid catalog entry: $skill');
          continue;
        }

        // Guard against path-traversal in catalog entries
        if (containsPathTraversal(skillName) ||
            containsPathTraversal(skillPath)) {
          ConsoleLogger.warning(
            'Skipping skill with suspicious name/path: $skillName / $skillPath',
          );
          continue;
        }

        final sourceSkillDir = Directory(path.join(repoRoot.path, skillPath));

        // Ensure the resolved source is still inside the repo root
        final sourceCanonical = path.canonicalize(sourceSkillDir.path);
        if (!path.equals(repoRootCanonical, sourceCanonical) &&
            !path.isWithin(repoRootCanonical, sourceCanonical)) {
          ConsoleLogger.warning(
            'Skill path $skillPath escapes repo root. Skipping.',
          );
          continue;
        }

        if (!await sourceSkillDir.exists()) {
          ConsoleLogger.warning(
            'Skill directory $skillPath not found, skipping.',
          );
          continue;
        }

        final targetSkillDir = Directory(
          path.join(targetAgentsDir.path, skillName),
        );

        // Ensure the resolved target is still inside .agents/skills
        final targetSkillCanonical = path.canonicalize(targetSkillDir.path);
        if (!path.equals(targetCanonical, targetSkillCanonical) &&
            !path.isWithin(targetCanonical, targetSkillCanonical)) {
          ConsoleLogger.warning(
            'Skill name $skillName escapes target directory. Skipping.',
          );
          continue;
        }

        if (await targetSkillDir.exists()) {
          await targetSkillDir.delete(recursive: true);
        }
        await targetSkillDir.create(recursive: true);

        // Copy directory contents
        await _copyDirectory(
          sourceSkillDir,
          targetSkillDir,
          sourceCanonical,
          targetSkillCanonical,
        );
        ConsoleLogger.success('✓ $skillName (copied)');
        installedCount++;
      }

      ConsoleLogger.success(
        'Installed $installedCount skills to .agents/skills',
      );
      return 0;
    } catch (e) {
      ConsoleLogger.error('Failed to install skills: $e');
      return 1;
    } finally {
      // Always clean up temp files regardless of success or failure
      if (await tempDir.exists()) {
        await tempDir.delete(recursive: true);
      }
    }
  }

  /// Returns true if a name or path segment contains traversal patterns.
  bool containsPathTraversal(String value) {
    return value.contains('..') ||
        path.isAbsolute(value) ||
        value.contains(r'\');
  }

  Future<void> _copyDirectory(
    Directory source,
    Directory destination,
    String sourceRootCanonical,
    String destinationRootCanonical,
  ) async {
    await for (var entity in source.list(
      recursive: false,
      followLinks: false,
    )) {
      if (entity is Link) {
        ConsoleLogger.warning('Skipping symlink: ${entity.path}');
        continue;
      }

      final entityCanonical = path.canonicalize(entity.path);
      // Ensure the source entity is within the allowed source root
      if (!path.equals(sourceRootCanonical, entityCanonical) &&
          !path.isWithin(sourceRootCanonical, entityCanonical)) {
        ConsoleLogger.warning(
          'Skipping out-of-bounds source entity: ${entity.path}',
        );
        continue;
      }

      final targetPath = path.join(
        destination.path,
        path.basename(entity.path),
      );
      final targetCanonical = path.canonicalize(targetPath);
      // Ensure the destination path is within the allowed target root
      if (!path.equals(destinationRootCanonical, targetCanonical) &&
          !path.isWithin(destinationRootCanonical, targetCanonical)) {
        ConsoleLogger.warning(
          'Skipping out-of-bounds destination path: $targetPath',
        );
        continue;
      }

      if (entity is Directory) {
        final newDirectory = Directory(targetPath);
        await newDirectory.create(recursive: true);
        await _copyDirectory(
          entity,
          newDirectory,
          sourceRootCanonical,
          destinationRootCanonical,
        );
      } else if (entity is File) {
        await entity.copy(targetPath);
      }
    }
  }
}
