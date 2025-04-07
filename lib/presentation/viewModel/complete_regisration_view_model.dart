import 'package:flutter/material.dart';

class CompleteRegistrationViewModel {
  final ValueNotifier<bool> isChecked = ValueNotifier(false);

  void toggleCheckbox(bool? value) {
    if (value != null) {
      isChecked.value = value;
    }
  }

  void dispose() {
    isChecked.dispose();
  }
}
