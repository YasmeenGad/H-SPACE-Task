import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:h_space_task/core/styles/colors/my_colors.dart';
import 'package:h_space_task/core/styles/fonts/my_fonts.dart';
import 'package:h_space_task/core/utils/widgets/custom_button.dart';

import '../../core/routes/app_router.dart';
import '../widgets/custom_text_field.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
                        "Login here",
                        style: MyFonts.styleBold700_30
                            .copyWith(color: MyColors.primaryColor),
                      ),
                      SizedBox(
                        height: 26,
                      ),
                      Text(
                        "Welcome back you’ve been missed!",
                        textAlign: TextAlign.center,
                        style: MyFonts.styleSemiBold600_20
                            .copyWith(color: MyColors.blackColor),
                      ),
                      SizedBox(
                        height: 78,
                      ),
                      const CustomTextField(
                        text: "Email",
                        showBorder: false,
                      ),
                      SizedBox(
                        height: 29,
                      ),
                      const CustomTextField(
                        text: "Password",
                        showBorder: false,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: (){
                            context.go(AppRouter.passwordRecovery);
                          },
                          child: Text(
                            "Forgot your password?",
                            style: MyFonts.styleSemiBold600_14
                                .copyWith(color: MyColors.primaryColor),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      CustomButton(
                        buttonText: "Sign in",
                        buttonColor: MyColors.primaryColor,
                        textColor: MyColors.whiteColor,
                        onTap: () {},
                      ),
                      SizedBox(
                        height: 38,
                      ),
                      GestureDetector(
                        onTap: (){
                          context.go(AppRouter.register);
                        },
                        child: Text(
                          "Create new account",
                          style: MyFonts.styleSemiBold600_14
                              .copyWith(color: MyColors.secondaryColor),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
