import '../../services/auth_service.dart';
import '../base_command.dart';

/// Command for logging out and clearing stored tokens
class LogoutCommand extends BaseCommand {
  final AuthService _authService = AuthService();

  @override
  String get name => 'logout';

  @override
  String get description => 'Clear stored authentication tokens and log out';

  @override
  bool get requiresAuth => false;

  @override
  Future<int> execute() async {
    await _authService.logout();
    return 0;
  }
}
