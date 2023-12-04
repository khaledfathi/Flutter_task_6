import 'package:flutter/material.dart';
import 'package:task_l5/views/alerts/alert_error_screens.dart';
import 'package:task_l5/views/home/home_screen.dart';
import 'package:task_l5/views/loading/loading_screen.dart';
import 'package:task_l5/views/login/login_screen.dart';
import 'package:task_l5/controllers/services/globals/singleton.dart' as globals;
import 'package:task_l5/views/signup/signup_screen.dart';

void main ()async {
  WidgetsFlutterBinding.ensureInitialized(); 
  await globals.db.initDB(); 
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LoadingScreen.route,
      routes: {
        //pages
        LoadingScreen.route: (context)=> const LoadingScreen(),
        LoginScreen.route: (context)=> const LoginScreen(), 
        HomeScreen.route: (context)=> const HomeScreen(), 
        SignUpScreen.route: (context)=> const SignUpScreen(), 
      },
    );
  }
}