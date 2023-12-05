import 'package:flutter/material.dart';
import 'package:task_l5/controllers/services/validation/validation.dart';
import 'package:task_l5/models/user_model.dart';
import 'package:task_l5/views/alerts/alert_error_screens.dart';
import 'package:task_l5/views/alerts/alert_success_screens%20copy.dart';
import 'package:task_l5/views/login/login_screen.dart';

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
    _validate().then((valid){
      if (valid) {
        //store data into database
        _storeNewUser()
            .then((_) => _showSuccess(context, 'Register Completed'));
      } else {
        _showError(context, 'Invalid inputs or Email already exist');
      }
    });
    //do signup first
    // Navigator.of(context).pushNamed(VerificationScreen.route);
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

  void _showError(BuildContext context, String message) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) => AlertErrorScreen(message: message));
  }

  void _showSuccess(BuildContext context, String message) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) => AlertSuccessScreen(
              message: message,
              onPress: () => Navigator.of(context)
                  .pushNamedAndRemoveUntil(LoginScreen.route, (route) => false),
            ));
  }

  Future<void> _storeNewUser() async {
    await UserModel().insert({
      'name': _name,
      'email': _email,
      'password': _password,
    });
  }
}
