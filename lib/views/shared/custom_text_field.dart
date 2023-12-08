import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {  
  final String? title ; 
  final String? hintText; 
  final EdgeInsets? margin; 
  final TextEditingController? controller;
  final bool? obscureText ; 
  final double? height ; 

  const CustomTextField({super.key , 
    this.title,
    this.hintText,
    this.margin,
    this.controller,
    this.obscureText,
    this.height
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ,
      child: Column(
        crossAxisAlignment:CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: Text(title??'Title', style: const TextStyle(color: Colors.black54),) ),
          Container(
            height: height,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            decoration: const BoxDecoration(              
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(color: Colors.grey ,offset: Offset(2, 2) , blurRadius: 4),
                BoxShadow(color: Colors.grey ,offset: Offset(-2, -2) , blurRadius: 4),
              ]
            ),
            child: TextField(                            
              obscureText: obscureText??false ,
              controller: controller,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,                
              ),              
            ),
          ),
        ],
      ),
    );
  }
}