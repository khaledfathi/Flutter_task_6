import 'package:flutter/material.dart';
import 'package:task_l5/views/screens/login/login_screen.dart';

class ProfileController {
  void logout(context) {
    _goToLoginscreen(context);
  }

  void _goToLoginscreen(BuildContext context) {
    Navigator.of(context)
        .pushNamedAndRemoveUntil(LoginScreen.route, (route) => false);
  }
}
