import 'package:flutter/material.dart';
import 'package:h_space_task/core/styles/colors/my_colors.dart';
import 'package:h_space_task/core/styles/fonts/my_fonts.dart';
import 'package:h_space_task/core/utils/config/responsive_extension.dart';
import 'package:h_space_task/generated/assets.dart';

import '../../core/utils/widgets/custom_button.dart';

class SuccessView extends StatelessWidget {
  const SuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      body: Padding(padding: EdgeInsets.only(left: 22, right: 22, top: 130), child: Column(
        children: [
          Image.asset(Assets.imagesOkAmico,width: double.infinity, height: 30.h,),
          const SizedBox(height: 5,),
          Text("Your details have been sent to the company and you will be contacted by a representative of the company",textAlign: TextAlign.center, style: MyFonts.styleSemiBold600_16.copyWith(color: MyColors.blackColor),),
          const SizedBox(height: 26,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 61),
            child: CustomButton(
              buttonText: 'Done',
              buttonColor: MyColors.primaryColor,
              textColor: MyColors.whiteColor,

            ),
          )
        ],
      ),)
    );
  }
}
