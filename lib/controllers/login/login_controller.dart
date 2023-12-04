import 'package:flutter/material.dart';
import 'package:task_l5/models/user_model.dart';
import 'package:task_l5/views/alerts/alert_error_screens.dart';
import 'package:task_l5/views/home/home_screen.dart';

class LoginController {

  Future<void> login(BuildContext context,
      {required String email, required String password}) async {
    await _attemp(email: email, password: password).then((login) {
      if(login){
        Navigator.pushNamed(context, HomeScreen.route);
      }else {
        _showError(context ,'Invalid User Name or password');
      };
    });
  }

  Future<bool> _attemp(
      {required String email, required String password}) async {
    email = email.trim();
    email = email.toLowerCase();
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

  Future createUser(
      {required name,
      required String email,
      required String password,
      String cart = '1'}) async {
    name = sanatizing(name);
    email = sanatizing(email);
    await UserModel().insert(
        {'name': name, 'email': email, 'password': password, 'cart': cart});
  }
}

String sanatizing(String text) {
  return text.trim().toLowerCase();
}

Future _showError (BuildContext context,  String error){
  return showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context){
      return const AlertErrorScreen(error: 'Invalid User name or password'); 
    });
}
