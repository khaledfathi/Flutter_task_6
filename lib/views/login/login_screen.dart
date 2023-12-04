import 'package:flutter/material.dart';
import 'package:task_l5/controllers/login/login_controller.dart';

class LoginScreen extends StatefulWidget {
  static const String route = 'login';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LoginController controller = LoginController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Text('Login Screen'),
          ElevatedButton(
              onPressed: () async {
                },              
              child: const Text('Click')),
        ],
      ),
    );
  }
}
