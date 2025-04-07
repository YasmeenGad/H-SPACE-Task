import 'package:flutter/material.dart';

import 'custom_file_field.dart';

class CustomFileFieldSection extends StatelessWidget {
  const CustomFileFieldSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 9,
      children: [
        const Align(
          alignment: Alignment.centerLeft,
          child: CustomFileField(text: "Trade Register"),
        ),
        const Align(
          alignment: Alignment.centerLeft,
          child: CustomFileField(text: "Tax Card"),
        ),
      ],
    );
  }
}
