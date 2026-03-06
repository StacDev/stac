import '../../services/auth_service.dart';
import '../base_command.dart';

/// Command for Google OAuth login
class LoginCommand extends BaseCommand {
  final AuthService _authService = AuthService();

  @override
  String get name => 'login';

  @override
  String get description =>
      'Authenticate with Google OAuth for Stac cloud services';

  @override
  bool get requiresAuth => false;

  LoginCommand() {
    argParser.addFlag(
      'interactive',
      abbr: 'i',
      help: 'Use interactive login flow (default)',
      defaultsTo: true,
    );
  }

  @override
  Future<int> execute() async {
    await _authService.login();
    return 0;
  }
}
