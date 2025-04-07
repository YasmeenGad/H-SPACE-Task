import 'package:flutter/material.dart';

import '../../core/styles/colors/my_colors.dart';
import '../../core/styles/fonts/my_fonts.dart';
import '../widgets/custom_sign_up_button_section.dart';
import '../widgets/custom_text_field_section.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 22, vertical: 80),
                  child: Column(
                    children: [
                      Text(
                        "Create Account",
                        style: MyFonts.styleBold700_30
                            .copyWith(color: MyColors.primaryColor),
                      ),
                      SizedBox(
                        height: 26,
                      ),
                      Text(
                        "Create an account so you can explore all the existing jobs",
                        textAlign: TextAlign.center,
                        style: MyFonts.styleMedium500_16
                            .copyWith(color: MyColors.blackColor),
                      ),
                      SizedBox(
                        height: 78,
                      ),
                      const CustomTextFieldSection(),
                      SizedBox(
                        height: 30,
                      ),
                      const CustomSignUpButtonSection(),
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
