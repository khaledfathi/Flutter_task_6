import 'package:flutter/material.dart';
import 'package:task_l5/controllers/screens/loading/loading_controller.dart';
import 'package:task_l5/views/screens/loading/components/center_logo.dart';

class LoadingScreen extends StatelessWidget {
  
  static const route = 'lodaing';
  //screen controller 
  final LoadingController controller = LoadingController(); 
  
  LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //fake delay
    controller.loadingDelay(context,seconds: 2); 

    return const Scaffold(    
      body: CenterLogo(),
    );
  }
}
