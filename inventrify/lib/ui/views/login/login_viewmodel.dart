import 'package:flutter/material.dart';
import 'package:inventrify/ui/views/login/login_view.form.dart';
import 'package:stacked/stacked.dart';

class LoginViewModel extends FormViewModel {
  IconData? icon;

  void validateEmailField() {
    if (emailValidationMessage == "Correct!") {
      icon = Icons.check;
    }
  }
}
