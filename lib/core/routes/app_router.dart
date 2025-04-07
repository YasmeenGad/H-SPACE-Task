import 'package:go_router/go_router.dart';
import 'package:h_space_task/presentation/views/follow_up_view.dart';
import 'package:h_space_task/presentation/views/login_view.dart';
import 'package:h_space_task/presentation/views/register_view.dart';
import 'package:h_space_task/presentation/views/update_password_view.dart';
import '../../presentation/views/complete_registeration_view.dart';
import '../../presentation/views/confirmation_view.dart';
import '../../presentation/views/password_recovery_view.dart';
import '../../presentation/views/success_view.dart';
import '../../presentation/views/verify_number_view.dart';
import '../../presentation/views/welcome_view.dart';

class AppRouter {
  static const String welcome = '/welcome';
  static const String login = '/login';
  static const String register = '/register';
  static const String completeRegistration = '/complete-registration';
  static const String successView = '/success-view';
  static const String passwordRecovery = '/password-recovery';
  static const String verifyNumber = '/verify-number';
  static const String updatePassword = '/update-password';
  static const String confirmation = '/confirmation';
  static const String followUpView = '/follow-up';

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
      GoRoute(
        path: successView,
        builder: (context, state) => const SuccessView(),
      ),
      GoRoute(
        path: passwordRecovery,
        builder: (context, state) => const PasswordRecoveryView(),
      ),
      GoRoute(
        path: verifyNumber,
        builder: (context, state) => const VerifyNumberView(),
      ),
      GoRoute(
        path: updatePassword,
        builder: (context, state) => const UpdatePasswordView(),
      ),
      GoRoute(
        path: confirmation,
        builder: (context, state) => const ConfirmationView(),
      ),
      GoRoute(
        path: followUpView,
        builder: (context, state) => const FollowUpView(),
      ),
    ],
  );
}
