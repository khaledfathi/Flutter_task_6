import 'package:flutter/material.dart';
import 'package:task_l5/views/login/login_screen.dart';

class VerificationController {
  void verify (BuildContext context){
    Navigator.of(context).pushNamedAndRemoveUntil(LoginScreen.route, (route) => false);
  }
}