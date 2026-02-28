import '../base_command.dart';
import '../../services/project_service.dart';
import '../../utils/console_logger.dart';

/// Command for creating a new project on the cloud
class CreateCommand extends BaseCommand {
  final ProjectService _projectService = ProjectService();

  @override
  String get name => 'create';

  @override
  String get description => 'Create a new Stac project on the cloud';

  @override
  bool get requiresAuth => true;

  CreateCommand() {
    argParser.addOption(
      'name',
      abbr: 'n',
      mandatory: true,
      help: 'Project name',
    );

    argParser.addOption(
      'description',
      abbr: 'd',
      help: 'Project description',
      defaultsTo: '',
    );
  }

  @override
  Future<int> execute() async {
    final name = argResults!['name'] as String;
    final description = argResults!['description'] as String;

    ConsoleLogger.info('Creating project: $name');

    try {
      final project = await _projectService.createProject(
        name: name,
        description: description,
      );

      ConsoleLogger.success('✓ Project created successfully!');
      ConsoleLogger.info('Project ID: ${project.id}');
      ConsoleLogger.info('Name: ${project.name}');
      ConsoleLogger.info('Description: ${project.description}');
      ConsoleLogger.info('');
      ConsoleLogger.info('Run "stac init" to initialize this project locally.');

      return 0;
    } catch (e) {
      ConsoleLogger.error('Failed to create project: $e');
      return 1;
    }
  }
}
