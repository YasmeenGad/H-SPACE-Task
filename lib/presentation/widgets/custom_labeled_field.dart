import 'package:flutter/material.dart';

import '../../core/styles/colors/my_colors.dart';
import '../../core/styles/fonts/my_fonts.dart';
import 'custom_text_field.dart';

class CustomLabeledField extends StatelessWidget {
  const CustomLabeledField({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            text,
            style: MyFonts.styleSemiBold600_18
                .copyWith(color: MyColors.blackColor),
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        CustomTextField(
          filledColor: MyColors.grayColor,
          height: 38,
        )
      ],
    );
  }
}
