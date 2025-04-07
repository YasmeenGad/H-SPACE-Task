import 'package:flutter/material.dart';

import '../../core/styles/colors/my_colors.dart';
import '../../core/styles/fonts/my_fonts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      this.text,
      this.hintColor,
      this.height,
      this.filledColor,
      required this.showBorder});

  final String? text;
  final Color? hintColor;
  final double? height;
  final Color? filledColor;
  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 64,
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: filledColor ?? MyColors.textFieldBgColor,
          hintText: text ?? "",
          hintStyle: MyFonts.styleMedium500_14
              .copyWith(color: hintColor ?? MyColors.textFieldColor),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: showBorder
                ? BorderSide(color: MyColors.mediumGray)
                : BorderSide.none,
          ),
        ),
      ),
    );
  }
}
