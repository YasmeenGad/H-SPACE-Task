import 'package:flutter/material.dart';

import '../../core/styles/colors/my_colors.dart';
import '../../core/styles/fonts/my_fonts.dart';

class SectionDescription extends StatelessWidget {
  const SectionDescription({super.key, required this.title, required this.subTitle});
  final String title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 14,
      children: [
        FittedBox(
          alignment: Alignment.centerLeft,
          fit: BoxFit.scaleDown,
          child: Text(
            title,
            style:
                MyFonts.styleMedium500_18.copyWith(color: MyColors.blackColor),
          ),
        ),
        Text(
          subTitle,
          style:
              MyFonts.styleMedium500_14.copyWith(color: MyColors.mediumGray),
        ),
      ],
    );
  }
}
