import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../core/routes/app_router.dart';
import '../../core/styles/colors/my_colors.dart';
import '../../core/styles/fonts/my_fonts.dart';
import '../../core/utils/widgets/custom_button.dart';

class CustomSignUpButtonSection extends StatelessWidget {
  const CustomSignUpButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton(
          buttonText: "Sign Up",
          buttonColor: MyColors.primaryColor,
          textColor: MyColors.whiteColor,
          onTap: () {
            context.go(AppRouter.completeRegistration);
          },
        ),
        SizedBox(
          height: 38,
        ),
        GestureDetector(
          onTap: () {
            context.go(AppRouter.login);
          },
          child: Text(
            "Already have an account",
            style: MyFonts.styleSemiBold600_14
                .copyWith(color: MyColors.secondaryColor),
          ),
        )
      ],
    );
  }
}
