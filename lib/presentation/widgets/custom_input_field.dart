import 'package:flutter/material.dart';

import '../../core/styles/colors/my_colors.dart';
import '../../core/styles/fonts/my_fonts.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField({super.key});

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
            "Your phone number",
            style: MyFonts.styleBold700_16.copyWith(color: MyColors.blackColor),
          ),
        ),
        TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: MyColors.secondaryColor))),
        ),
      ],
    );
  }
}
