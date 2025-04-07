import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:h_space_task/core/routes/app_router.dart';
import 'package:h_space_task/core/styles/colors/my_colors.dart';
import 'package:h_space_task/core/styles/fonts/my_fonts.dart';
import 'package:h_space_task/core/utils/config/responsive_extension.dart';
import 'package:h_space_task/core/utils/widgets/custom_button.dart';
import 'package:h_space_task/generated/assets.dart';

class FollowUpView extends StatelessWidget {
  const FollowUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 21),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(Assets.imagesCheck, height: 20.h, width: 20.w,),
              const SizedBox(height: 88,),
              Text("Congratulations! Your password has been changed. Click Continue to log in",textAlign: TextAlign.center,style: MyFonts.styleMedium500_16.copyWith(color: MyColors.mediumGray),),
              const SizedBox(height: 36,),
              Padding(
                padding: const EdgeInsets.all(7.0),
                child: GestureDetector(
                  onTap: (){
                    context.go(AppRouter.welcome);
                  },
                    child: CustomButton(buttonText: 'Follow-up', buttonColor: MyColors.primaryColor, textColor: MyColors.whiteColor)),
              )

            ],
          ),
        ),
      ),
    );
  }
}
