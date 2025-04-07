// complete_registration_view.dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:h_space_task/core/styles/colors/my_colors.dart';
import 'package:h_space_task/core/utils/widgets/custom_button.dart';

import '../../core/routes/app_router.dart';
import '../../core/styles/fonts/my_fonts.dart';
import '../viewModel/complete_regisration_view_model.dart';
import '../widgets/custom_file_field_section.dart';
import '../widgets/custom_labled_field_section.dart';

class CompleteRegistrationView extends StatefulWidget {
  const CompleteRegistrationView({super.key});

  @override
  State<CompleteRegistrationView> createState() =>
      _CompleteRegistrationViewState();
}

class _CompleteRegistrationViewState extends State<CompleteRegistrationView> {
  late final CompleteRegistrationViewModel viewModel;

  @override
  void initState() {
    super.initState();
    viewModel = CompleteRegistrationViewModel();
  }

  @override
  void dispose() {
    viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: MyColors.whiteColor,
            pinned: true,
            leading: GestureDetector(
              onTap: () {
                context.go(AppRouter.register);
              },
              child: Icon(
                Icons.arrow_back_ios_new_outlined,
                color: MyColors.blackColor,
                size: 36,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 10),
              child: Column(
                children: [
                  Text(
                    "Complete the registration",
                    style: MyFonts.styleSemiBold600_20
                        .copyWith(color: MyColors.blackColor),
                  ),
                  const SizedBox(height: 30),
                  const CustomLabeledFieldSection(),
                  const SizedBox(height: 45),
                  const CustomFileFieldSection(),
                  const SizedBox(height: 20),
                  ValueListenableBuilder<bool>(
                    valueListenable: viewModel.isChecked,
                    builder: (context, isChecked, _) {
                      return Row(
                        children: [
                          Checkbox(
                            value: isChecked,
                            onChanged: viewModel.toggleCheckbox,
                            activeColor: MyColors.primaryColor,
                          ),
                          Expanded(
                            child: Text(
                              "I agree that the data entered is correct",
                              style: MyFonts.styleRegular400_14
                                  .copyWith(color: MyColors.blackColor),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                  const SizedBox(height: 25),
                  CustomButton(
                    buttonText: 'Registration',
                    buttonColor: MyColors.primaryColor,
                    textColor: MyColors.whiteColor,
                    onTap: () {
                      context.go(AppRouter.successView);
                    },
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
