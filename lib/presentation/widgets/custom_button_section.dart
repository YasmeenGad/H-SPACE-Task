import 'package:flutter/material.dart';

import '../../core/styles/colors/my_colors.dart';
import '../../core/utils/widgets/custom_button.dart';

class CustomButtonSection extends StatelessWidget {
  const CustomButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        spacing: 10,
        children: [
          Expanded(
            child: CustomButton(
              textColor: MyColors.whiteColor,
              buttonColor: MyColors.primaryColor,
              buttonText: "Login",
            ),
          ),
          Expanded(
            child: CustomButton(
              textColor: MyColors.buttonTextColor,
              buttonColor: MyColors.whiteColor,
              buttonText: "Sign Up",
            ),
          ),
        ],
      ),
    );
  }
}
