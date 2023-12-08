
import 'package:flutter/material.dart';
import 'package:task_l5/views/screens/language/language.dart';

class SettingsController {
  void goToLanguageScreen (BuildContext context){
    Navigator.pushNamed(context, Language.route);
  }
}