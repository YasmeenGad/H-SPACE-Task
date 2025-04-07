import 'package:flutter/material.dart';

import 'custom_labeled_field.dart';

class CustomLabeledFieldSection extends StatelessWidget {
  const CustomLabeledFieldSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 15,
      children: [
        const CustomLabeledField(text: "Name"),
        const CustomLabeledField(text: "Name of the pharmacy"),
        const CustomLabeledField(text: "Pharmacy address"),
      ],
    );
  }
}
