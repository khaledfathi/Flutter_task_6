import 'package:flutter/material.dart';
import 'package:task_l5/controllers/auth/auth.dart';
import 'package:task_l5/views/screens/home/home_screen.dart';
import 'package:task_l5/views/screens/users/users_screen.dart';
import 'package:task_l5/views/shared/alerts/alert_error.dart';

class LoginController {
  void login(BuildContext context,
      {required String email, required String password}) {
    Auth().login(email: email, password: password).then((login) {
      if (login) {
        _goToHomeScreen(context);
      } else {
        _showError(context, 'Invalid User Name or password');
      }
    });
  }

  void goToUsersScreen(BuildContext context) async {
    Navigator.of(context).pushNamed(UsersScreen.route);
  }

  void _goToHomeScreen(BuildContext context) {
    Navigator.pushReplacementNamed(context, HomeScreen.route);
  }

  Future _showError(BuildContext context, String message) {
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertError(message: message);
        });
  }
}
