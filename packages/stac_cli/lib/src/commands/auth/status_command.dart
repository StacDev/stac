import '../../services/auth_service.dart';
import '../base_command.dart';

/// Command for checking authentication status
class StatusCommand extends BaseCommand {
  final AuthService _authService = AuthService();

  @override
  String get name => 'status';

  @override
  String get description => 'Show current authentication status';

  @override
  bool get requiresAuth => false;

  @override
  Future<int> execute() async {
    await _authService.status();
    return 0;
  }
}
