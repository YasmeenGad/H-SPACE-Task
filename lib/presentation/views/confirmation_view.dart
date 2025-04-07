import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/routes/app_router.dart';
import '../../core/styles/colors/my_colors.dart';
import '../../core/utils/base/base_otp_body.dart';
import '../widgets/custom_labeled_field.dart';

class ConfirmationView extends StatelessWidget {
  const ConfirmationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      body: BaseOtpBody(
        title: "Reset Password",
        subTitle: "Your password has been successfully reset. Click Confirm to set a new password",
        widget: SizedBox(),
        textButton: "Confirmation",
        nextView: () {
          context.go(AppRouter.updatePassword);
        },
        previousView: () {
          context.go(AppRouter.verifyNumber);
        },
      ),
    );
  }
}
