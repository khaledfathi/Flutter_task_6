import 'package:flutter/material.dart';
import 'package:task_l5/controllers/auth/auth.dart';
import 'package:task_l5/controllers/screens/verification/verification_args.dart';
import 'package:task_l5/views/screens/verification/verification_screen.dart';
import 'package:task_l5/views/shared/alerts/alert_error.dart';

class SignUpController {
  //signup fields 
  late String _name ;
  late String _email ; 
  late String _password; 

  void signUp(BuildContext context,
      {required String name, required String email, required String password}) {
      _name = name; 
      _email = email; 
      _password = password; 
    Auth().signUpAttemp(name: name, email: email, password: password).then((attempErrors){
        attempErrors.isEmpty ? _goToVerificationScreen(context) : _showError(context , attempErrors[0]);//show only first error
    });
  }

  void signIn(BuildContext context) {
    Navigator.of(context).pop();
  }


  void _showError(BuildContext context , String message) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) => AlertError(message: message));
  }

  void _goToVerificationScreen(context) {
    Navigator.of(context).pushReplacementNamed(VerificationScreen.route,
        arguments: VerificationArgs(_name, _email, _password));
  }
}
