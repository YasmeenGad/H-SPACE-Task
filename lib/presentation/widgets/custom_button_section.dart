import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:h_space_task/core/routes/app_router.dart';

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
              onTap: (){
                context.go(AppRouter.login);
              },
              textColor: MyColors.whiteColor,
              buttonColor: MyColors.primaryColor,
              buttonText: "Login",
            ),
          ),
          Expanded(
            child: CustomButton(
              onTap: (){
                context.go(AppRouter.register);
              },
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
