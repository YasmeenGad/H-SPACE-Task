import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:h_space_task/core/styles/colors/my_colors.dart';
import 'package:h_space_task/core/styles/fonts/my_fonts.dart';

import '../../core/routes/app_router.dart';
import '../../core/utils/base/base_otp_body.dart';
import '../../core/utils/widgets/custom_button.dart';
import '../widgets/custom_input_field.dart';
import '../widgets/section_description.dart';

class PasswordRecoveryView extends StatelessWidget {
  const PasswordRecoveryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      body: BaseOtpBody(
        title: "Password Recovery",
        subTitle: "Please enter your phone number to reset your password",
        widget: CustomInputField(),
        textButton: "Reset Password",
        nextView: (){
          context.go(AppRouter.verifyNumber);
        },
        previousView: (){
          context.go(AppRouter.login);
        },
      ),
    );
  }
}
