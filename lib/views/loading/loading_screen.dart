import 'package:flutter/material.dart';
import 'package:task_l5/views/login/login_screen.dart';

class LoadingScreen extends StatelessWidget {
  static const route = 'lodaing';
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(microseconds: 500), ()=>Navigator.pushReplacementNamed(context, LoginScreen.route));
    return const Scaffold(
      body: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.only(bottom: 50),
                  child: Icon(
                    Icons.watch_later_outlined,
                    size: 100,
                  )),
              CircularProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}
