import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        color: Color(0xff0fa189),
        child: const Text('Category Screen', style: TextStyle(fontSize: 40),),
        ),
    ); 
  }
}