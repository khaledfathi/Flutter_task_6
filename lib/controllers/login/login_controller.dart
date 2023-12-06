import 'package:flutter/material.dart';
import 'package:task_l5/models/user_model.dart';
import 'package:task_l5/views/shared/alerts/alert_error.dart';
import 'package:task_l5/views/home/home_screen.dart';
import 'package:task_l5/views/users/users_screen.dart';

class LoginController {
  void login(BuildContext context,
      {required String email, required String password}) {
    _attemp(email: email, password: password).then((login) {
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

  Future<bool> _attemp(
      {required String email, required String password}) async {
    email = _sanatizing(email);
    bool login = false;
    await UserModel()
        .selectWhere('email = "$email" AND password= "$password"')
        .then((queryResult) => {
              if (queryResult.isNotEmpty)
                {
                  if (queryResult[0].email == email &&
                      queryResult[0].password == password)
                    {login = true}
                }
            });
    return login;
  }

  String _sanatizing(String text) {
    return text.trim().toLowerCase();
  }

  Future _showError(BuildContext context, String error) {
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return const AlertError(message: 'Invalid User name or password');
        });
  }
}
