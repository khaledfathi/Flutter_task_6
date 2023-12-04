import 'package:flutter/material.dart';
import 'package:task_l5/views/login/login_screen.dart';

class LoadingController {
  
  void loadingDelay (BuildContext context, {int seconds=4}){
    Future.delayed( Duration(seconds: seconds),
    () => Navigator.pushReplacementNamed(context, LoginScreen.route));
  }
}