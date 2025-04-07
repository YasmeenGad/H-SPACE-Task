import 'package:flutter/material.dart';
import 'package:h_space_task/core/styles/fonts/my_fonts.dart';

import '../../../presentation/widgets/section_description.dart';
import '../../styles/colors/my_colors.dart';
import '../widgets/custom_button.dart';

class BaseOtpBody extends StatelessWidget {
  const BaseOtpBody(
      {super.key,
      required this.textButton,
      required this.title,
      required this.subTitle,
      required this.widget,
      this.nextView,
      this.footerText,
      this.showFooter,
      this.previousView});

  final String textButton, title, subTitle;
  final String? footerText;
  final Widget widget;
  final void Function()? nextView, previousView;
  final bool? showFooter;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: MyColors.whiteColor,
          pinned: true,
          leading: GestureDetector(
            onTap: previousView,
            child: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: MyColors.blackColor,
              size: 36,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SectionDescription(
                  title: title,
                  subTitle: subTitle,
                ),
                const SizedBox(
                  height: 14,
                ),
                widget,
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(7),
                  child: CustomButton(
                    buttonText: textButton,
                    buttonColor: MyColors.primaryColor,
                    textColor: MyColors.whiteColor,
                    onTap: nextView,
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                if (showFooter == true)
                  Row(
                    children: [
                      Expanded(
                          flex: 3,
                          child: Text(
                            "Didn't get the verification code yet?",
                            style: MyFonts.styleRegular400_14
                                .copyWith(color: MyColors.mediumGray),
                          )),
                      Expanded(
                          flex: 1,
                          child: Text(
                            "Resend code",
                            style: MyFonts.styleBold700_10
                                .copyWith(color: MyColors.orangeColor),
                          ))
                    ],
                  )
              ],
            ),
          ),
        )
      ],
    );
  }
}
