import 'package:flutter/material.dart';
import 'package:h_space_task/core/utils/config/responsive_extension.dart';

import '../../styles/fonts/my_fonts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.buttonText,
      required this.buttonColor,
      required this.textColor,this.onTap, });

  final String buttonText;
  final Color buttonColor, textColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(10),
        ),
        height: 60,
        child: Center(
          child: FittedBox(
            alignment: Alignment.bottomCenter,
            fit: BoxFit.scaleDown,
            child: Text(
              buttonText,
              style: MyFonts.styleSemiBold600_20.copyWith(color: textColor),
            ),
          ),
        ),
      ),
    );
  }
}
