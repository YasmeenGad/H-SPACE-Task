import 'package:go_router/go_router.dart';

import '../../presentation/views/welcome_view.dart';

class AppRouter {
  static const String welcome = '/welcome';
  static const String login = '/login';
  static const String register = '/register';

  GoRoute homeRoute() => GoRoute(
    path: welcome,
    builder: (context, state) => const WelcomeView(),
  );
}