import 'package:flutter/material.dart';
import 'package:task_l5/controllers/services/globals/singleton.dart' as globals;
import 'package:task_l5/views/screens/home/home_screen.dart';
import 'package:task_l5/views/screens/loading/loading_screen.dart';
import 'package:task_l5/views/screens/login/login_screen.dart';
import 'package:task_l5/views/screens/signup/signup_screen.dart';
import 'package:task_l5/views/screens/users/users_screen.dart';
import 'package:task_l5/views/screens/verification/verification_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await globals.db.initDB();
  // await globals.db.recreateDatabase(); 
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
        LoadingScreen.route: (context) => LoadingScreen(),
        UsersScreen.route: (context) => const UsersScreen(),
        LoginScreen.route: (context) => const LoginScreen(),
        HomeScreen.route: (context) => HomeScreen(),
        SignUpScreen.route: (context) => const SignUpScreen(),
        VerificationScreen.route: (context) => const VerificationScreen(),
      },
    );
  }
}
