import 'package:args/command_runner.dart';
import 'project/create_command.dart';
import 'project/list_command.dart';

/// Main project command that groups project-related subcommands
class ProjectCommand extends Command<int> {
  @override
  String get name => 'project';

  @override
  String get description => 'Manage Stac projects on the cloud';

  ProjectCommand() {
    addSubcommand(CreateCommand());
    addSubcommand(ListCommand());
  }
}
