import 'package:flutter/material.dart';

class CustomTextFieldNoLabel extends StatelessWidget {
  
  final TextEditingController? controller;
  final String? hintText ; 
  final bool? enable;

  const CustomTextFieldNoLabel({super.key,
    this.controller,
    this.hintText,
    this.enable,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const  EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(color: Colors.grey, offset: Offset(2, 2), blurRadius: 4),
            BoxShadow(
                color: Colors.grey, offset: Offset(-2, -2), blurRadius: 4),
          ]),
      child: TextField(
        enabled: enable,
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
        ),
      ),
    );
  }
}
