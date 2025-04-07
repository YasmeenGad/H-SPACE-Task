import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/routes/app_router.dart';
import '../../core/styles/colors/my_colors.dart';
import '../../core/utils/base/base_otp_body.dart';
import '../widgets/custom_labeled_field.dart';

class UpdatePasswordView extends StatelessWidget {
  const UpdatePasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      body: BaseOtpBody(
        title: "Set a new password",
        subTitle: "Create a new password. Make sure it is different from the previous one for security",
        widget: Column(
          spacing: 16,
          children: [
            CustomLabeledField(
              text: "Password",
              hintText: "Enter your new password",
              filledColor: MyColors.whiteColor,
              showBorder: true,
            ),
            CustomLabeledField(
              text: "Confirm Password",
              hintText: "Re-enter the password",
              filledColor: MyColors.whiteColor,
              showBorder: true,
            ),
          ],
        ),
        textButton: "Reset Password",
        nextView: () {
          context.go(AppRouter.followUpView);
        },
        previousView: () {
          context.go(AppRouter.confirmation);
        },
      ),
    );
  }
}
