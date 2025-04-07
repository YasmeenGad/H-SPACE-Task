import 'package:flutter/material.dart';

import '../../core/styles/colors/my_colors.dart';
import 'custom_labeled_field.dart';

class CustomLabeledFieldSection extends StatelessWidget {
  const CustomLabeledFieldSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 15,
      children: [
        CustomLabeledField(text: "Name", filledColor: MyColors.grayColor,showBorder: false,),
        CustomLabeledField(text: "Name of the pharmacy", filledColor: MyColors.grayColor,showBorder: false,),
        CustomLabeledField(text: "Pharmacy address", filledColor: MyColors.grayColor,showBorder: false,),
      ],
    );
  }
}
