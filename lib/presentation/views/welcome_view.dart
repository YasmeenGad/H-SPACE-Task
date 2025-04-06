import 'package:flutter/material.dart';
import 'package:h_space_task/core/utils/responsive_extension.dart';
import 'package:h_space_task/generated/assets.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
           Image.asset(Assets.imagesWelcomeImage, height: 40.h, width: 100.w,)
        ],
      ),
    );
  }
}
