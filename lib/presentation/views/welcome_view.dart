import 'package:flutter/material.dart';
import 'package:h_space_task/core/styles/colors/my_colors.dart';
import '../widgets/custom_button_section.dart';
import '../widgets/custom_image_section.dart';
import '../widgets/custom_text_section.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      body: Padding(
        padding: const EdgeInsets.all(33),
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomImageSection(),
              const SizedBox(
                height: 44,
              ),
              const CustomTextSection(),
              const Spacer(),
              const CustomButtonSection(),
            ],
          ),
        ),
      ),
    );
  }
}
