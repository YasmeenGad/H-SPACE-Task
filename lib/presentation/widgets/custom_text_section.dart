import 'package:flutter/material.dart';

import '../../core/styles/colors/my_colors.dart';
import '../../core/styles/fonts/my_fonts.dart';

class CustomTextSection extends StatelessWidget {
  const CustomTextSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FittedBox(
            alignment: Alignment.center,
            fit: BoxFit.scaleDown,
            child: Text(
              'Cairo Pharma',
              style: MyFonts.styleSemiBold600_40
                  .copyWith(color: MyColors.primaryColor),
            )),
        SizedBox(
          height: 5,
        ),
        Text(
          'Explore all the existing job roles based on your interest and study major',
          textAlign: TextAlign.center,
          style: MyFonts.styleRegular400_14
              .copyWith(color: MyColors.secondaryColor),
        ),
      ],
    );
  }
}
