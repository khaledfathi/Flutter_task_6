
import 'package:flutter/material.dart';
import 'package:task_l5/views/screens/home/components/home_app_bar.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          color: Color(0xff24f8a8),
          child: const Text('Store Screen ', style: TextStyle(fontSize: 40),),
          ),
      ),
    ); 
  }
}