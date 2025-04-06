import 'package:flutter/material.dart';
import 'package:h_space_task/core/styles/colors/my_colors.dart';

import 'core/routes/app_router.dart';
import 'core/utils/config/media_query_config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.router,
        builder: (context, child) {
          MediaQueryConfig.init(context);
          return child!;
        });
  }
}
