import 'package:flutter/material.dart';
import 'package:h_space_task/core/utils/config/responsive_extension.dart';

import '../../core/styles/colors/my_colors.dart';
import '../../core/styles/fonts/my_fonts.dart';

class CustomFileField extends StatelessWidget {
  const CustomFileField({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12,
      children: [
        FittedBox(
          alignment: Alignment.centerLeft,
          fit: BoxFit.scaleDown,
          child: Text(
            text,
            style: MyFonts.styleSemiBold600_16
                .copyWith(color: MyColors.blackColor),
          ),
        ),
        Container(
            width: 75.w,
            height: 5.h,
            decoration: BoxDecoration(
              color: MyColors.grayColor,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      width: 75.w,
                      height: 5.h,
                      decoration: BoxDecoration(
                        color: MyColors.lavenderBlueColor,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(
                        child: Text(
                          "Attaching the file",
                          style: MyFonts.styleBold700_10
                              .copyWith(color: MyColors.blackColor),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Center(
                    child: Text(
                      "photo.jpg",
                      style: MyFonts.styleMedium500_14
                          .copyWith(color: MyColors.secondaryColor),
                    ),
                  ))
                ],
              ),
            ))
      ],
    );
  }
}
