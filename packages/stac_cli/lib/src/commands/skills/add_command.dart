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

  AddCommand() {
    // Optionally accept a repository URL.
  }

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

    try {
      final dio = Dio();
      final tempDir = await Directory.systemTemp.createTemp('stac_skills_');
      final zipFile = File(path.join(tempDir.path, 'repo.zip'));

      await dio.download(zipUrl, zipFile.path);

      // Extract ZIP
      final archive = ZipDecoder().decodeBytes(zipFile.readAsBytesSync());
      final extractDir = Directory(path.join(tempDir.path, 'extracted'));
      extractArchiveToDisk(archive, extractDir.path);

      // Find skills/catalog.json
      // The extracted folder usually has a root folder named <repo>-<branch>
      final rootDirs = extractDir.listSync().whereType<Directory>().toList();
      if (rootDirs.isEmpty) {
         ConsoleLogger.error('Empty repository archive.');
         return 1;
      }
      
      final repoRoot = rootDirs.first;
      ConsoleLogger.info('Extracted root: ${repoRoot.path}');
      
      final catalogFile = File(path.join(repoRoot.path, 'skills', 'catalog.json'));
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

      final targetAgentsDir = Directory(path.join(Directory.current.path, '.agents', 'skills'));
      if (!await targetAgentsDir.exists()) {
        await targetAgentsDir.create(recursive: true);
      }

      int installedCount = 0;
      for (final skill in catalog) {
        final skillName = skill['name'];
        final skillPath = skill['path'];

        if (skillName == null || skillPath == null) continue;

        final sourceSkillDir = Directory(path.join(repoRoot.path, skillPath));
        if (!await sourceSkillDir.exists()) {
          ConsoleLogger.warning('Skill directory $skillPath not found, skipping.');
          continue;
        }

        final targetSkillDir = Directory(path.join(targetAgentsDir.path, skillName));
        if (await targetSkillDir.exists()) {
          await targetSkillDir.delete(recursive: true);
        }
        await targetSkillDir.create(recursive: true);

        // Copy directory contents
        await _copyDirectory(sourceSkillDir, targetSkillDir);
        ConsoleLogger.success('✓ $skillName (copied)');
        installedCount++;
      }

      ConsoleLogger.success('Installed $installedCount skills to .agents/skills');
      
      // Cleanup
      await tempDir.delete(recursive: true);
      return 0;
    } catch (e) {
      ConsoleLogger.error('Failed to install skills: $e');
      return 1;
    }
  }

  Future<void> _copyDirectory(Directory source, Directory destination) async {
    await for (var entity in source.list(recursive: false)) {
      if (entity is Directory) {
        var newDirectory = Directory(path.join(destination.path, path.basename(entity.path)));
        await newDirectory.create();
        await _copyDirectory(entity.absolute, newDirectory);
      } else if (entity is File) {
        await entity.copy(path.join(destination.path, path.basename(entity.path)));
      }
    }
  }
}
