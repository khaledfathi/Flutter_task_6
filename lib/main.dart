import 'package:flutter/material.dart';
import 'package:task_l5/views/loading/loading_screen.dart';
import 'package:task_l5/views/login/login_screen.dart';
import 'package:task_l5/controllers/services/globals/globals.dart' as globals;

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
        LoadingScreen.route: (context)=> const LoadingScreen(),
        LoginScreen.route: (context)=>const LoginScreen(), 
      },
    );
  }
}