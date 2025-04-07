import 'package:go_router/go_router.dart';
import 'package:h_space_task/presentation/views/login_view.dart';
import 'package:h_space_task/presentation/views/register_view.dart';
import '../../presentation/views/complete_registeration_view.dart';
import '../../presentation/views/welcome_view.dart';

class AppRouter {
  static const String welcome = '/welcome';
  static const String login = '/login';
  static const String register = '/register';
  static const String completeRegistration = '/complete-registration';

  static final GoRouter router = GoRouter(
    initialLocation: welcome,
    routes: [
      GoRoute(
        path: welcome,
        builder: (context, state) => const WelcomeView(),
      ),
      GoRoute(
        path: login,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: register,
        builder: (context, state) => const RegisterView(),
      ),
      GoRoute(
        path: completeRegistration,
        builder: (context, state) => const CompleteRegistrationView(),
      ),
    ],
  );
}
