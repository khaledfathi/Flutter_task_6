import 'package:flutter/material.dart';
import 'package:task_l5/controllers/services/validation/validation.dart';
import 'package:task_l5/controllers/verification/verification_args.dart';
import 'package:task_l5/views/alerts/alert_error_screens.dart';
import 'package:task_l5/views/verification/verification_screen.dart';

class SignUpController {
  late String _name;
  late String _email;
  late String _password;

  void signUp(BuildContext context,
      {required String name, required String email, required String password}) {
    //data prepeared
    _name = name;
    _email = email;
    _password = password;
    _sanatizing();
    _validate().then((valid) {
      valid ? _goToVerificationScreen(context) : _showError(context);
    });
  }

  void signIn(BuildContext context) {
    Navigator.of(context).pop();
  }

  void _sanatizing() {
    _name = _name.trim();
    _email = _email.trim().toLowerCase();
  }

  Future<bool> _validate() async {
    bool nameValid = false;
    bool emailValid = false;
    bool passwordValid = false;
    nameValid = Validation(_name).length(minLength: 3).required().validate();
    passwordValid =
        Validation(_password).required().length(minLength: 8).validate();
    await Validation(_email).required().unique('users', 'email').then((valid) {
      emailValid = valid.validate();
    });
    return nameValid && emailValid && passwordValid;
  }

  void _showError(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) =>
            const AlertErrorScreen(message: 'Invalid inputs or already exist'));
  }

  void _goToVerificationScreen(context) {
    Navigator.of(context).pushReplacementNamed(VerificationScreen.route,
        arguments: VerificationArgs(_name, _email, _password));
  }
}
