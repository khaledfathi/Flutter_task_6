import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  static const  String route = 'signup'; 
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up Screen '), 
      ),
    );
  }
}