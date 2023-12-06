import 'package:flutter/material.dart';
import 'package:task_l5/controllers/login/login_args.dart';
import 'package:task_l5/controllers/verification/verification_args.dart';
import 'package:task_l5/models/user_model.dart';
import 'package:task_l5/views/login/login_screen.dart';
import 'package:task_l5/views/shared/alerts/alert_error.dart';
import 'package:task_l5/views/shared/alerts/alert_success.dart';

class VerificationController {
  late String _name;
  late String _email;
  late String _password;

  void verify(BuildContext context, String? verifyCode, VerificationArgs args) {
    // recive args
    _name = args.name;
    _email = args.email;
    _password = args.password;
    //
    if (verifyCode == '1234') {
      _storeNewUser().then((_) {
        _showSuccess(context).then((_){
          _goToLoginScreen(context);
        });
      });
    } else {
      _showError(context);
    }
  }

  void _showError(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => const AlertError(message: 'Invalid code'));
  }

  Future _showSuccess(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) => AlertSuccess(
              message: 'Register Completed',
              onPress: () => Navigator.of(context).pop(),
            ));
  }

  Future<void> _storeNewUser() async {
    await UserModel().insert({
      'name': _name,
      'email': _email,
      'password': _password,
    });
  }

  void _goToLoginScreen(BuildContext context) {
    Navigator.of(context).pushNamedAndRemoveUntil(
        LoginScreen.route, (route) => false,
        arguments: LoginArgs(_email, _password));
  }
}
