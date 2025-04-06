import 'package:flutter/material.dart';
import 'package:h_space_task/core/utils/config/responsive_extension.dart';

import '../../generated/assets.dart';

class CustomImageSection extends StatelessWidget {
  const CustomImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Assets.imagesWelcomeImage,
      height: 40.h,
      width: 100.w,
    );
  }
}
