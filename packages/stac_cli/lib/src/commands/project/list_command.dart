import 'dart:convert';

import '../../services/project_service.dart';
import '../../utils/console_logger.dart';
import '../base_command.dart';

/// Command for listing all cloud projects
class ListCommand extends BaseCommand {
  final ProjectService _projectService = ProjectService();

  @override
  String get name => 'list';

  @override
  String get description => 'List all Stac projects on the cloud';

  @override
  bool get requiresAuth => true;

  ListCommand() {
    argParser.addFlag('json', help: 'Output in JSON format', defaultsTo: false);
  }

  @override
  Future<int> execute() async {
    final outputJson = argResults!['json'] as bool;

    try {
      final projects = await _projectService.fetchProjects();

      if (projects.isEmpty) {
        ConsoleLogger.info('No projects found.');
        ConsoleLogger.info('Create a new project with "stac project create"');
        return 0;
      }

      if (outputJson) {
        // Output as JSON
        final jsonOutput = projects.map((p) => p.toJson()).toList();
        ConsoleLogger.plain(jsonEncode(jsonOutput));
      } else {
        // Human-readable output
        ConsoleLogger.info('Found ${projects.length} project(s):');
        ConsoleLogger.plain('');

        for (final project in projects) {
          ConsoleLogger.plain('${project.name} (${project.id})');
          ConsoleLogger.plain('  Description: ${project.description}');
          ConsoleLogger.plain('  Created: ${project.createdAt.toLocal()}');
          ConsoleLogger.plain('  Updated: ${project.updatedAt.toLocal()}');
          ConsoleLogger.plain('');
        }
      }

      return 0;
    } catch (e) {
      ConsoleLogger.error('Failed to fetch projects: $e');
      return 1;
    }
  }
}
