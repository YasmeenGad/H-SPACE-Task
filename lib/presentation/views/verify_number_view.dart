import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:go_router/go_router.dart';
import 'package:h_space_task/core/utils/config/responsive_extension.dart';

import '../../core/routes/app_router.dart';
import '../../core/styles/colors/my_colors.dart';
import '../../core/utils/base/base_otp_body.dart';

class VerifyNumberView extends StatelessWidget {
  const VerifyNumberView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      body: BaseOtpBody(
        title: "Verify your phone number",
        subTitle:
            "We have sent a message with a verification code, please check it to complete the password recovery",
        widget: OtpTextField(
          numberOfFields: 5,
          borderColor: Color(0xFF512DA8),
          showFieldAsBox: true,
          fieldHeight: 50,
          borderRadius: BorderRadius.circular(10),
          fieldWidth: 10.w,
          margin: EdgeInsets.symmetric(horizontal: 8), // <-- This adds spacing
        ),
        textButton: "Code Verification",
        nextView: (){
          context.go(AppRouter.confirmation);
        },
        previousView: (){
          context.go(AppRouter.passwordRecovery);
        },
        showFooter: true,
      ),
    );
  }
}
