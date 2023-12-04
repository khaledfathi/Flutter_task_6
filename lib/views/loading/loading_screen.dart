import 'package:flutter/material.dart';
import 'package:task_l5/controllers/loading/loading_controller.dart';
import 'package:task_l5/views/loading/components/center_logo.dart';

class LoadingScreen extends StatelessWidget {
  static const route = 'lodaing';
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //fake delay     
    LoadingController().loadingDelay(context,seconds: 1); 

    return const Scaffold(    
      body: CenterLogo(),
    );
  }
}
