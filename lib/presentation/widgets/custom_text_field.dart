import 'package:flutter/material.dart';

import '../../core/styles/colors/my_colors.dart';
import '../../core/styles/fonts/my_fonts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key,  this.text, this.filledColor, this.height});
  final String? text;
  final Color? filledColor;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height?? 64,
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: MyColors.textFieldBgColor,
          hintText: text?? "",
          hintStyle: MyFonts.styleMedium500_16.copyWith(
              color: filledColor?? MyColors.textFieldColor),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
