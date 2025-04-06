import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class CustomTextFieldSection extends StatelessWidget {
  const CustomTextFieldSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 29,
      children: [
        const CustomTextField(
          text: "Password",
        ),
        const CustomTextField(
          text: "Email",
        ),
        const CustomTextField(
          text: "ConfirmPassword",
        ),
      ],
    );
  }
}
