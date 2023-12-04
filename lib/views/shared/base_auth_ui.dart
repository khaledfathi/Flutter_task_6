
import 'package:flutter/material.dart';
import 'package:task_l5/controllers/services/constants/general_constants.dart';

class BaseAuthUI extends StatelessWidget {
  final double screenWidth; 
  final double screenHight; 
  final String? title; 
  final String? subtitle; 
  final Widget? child;

  const BaseAuthUI({super.key,
    required this.screenWidth,
    required this.screenHight,
    this.title,
    this.subtitle,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(25),
        width: screenWidth,
        height: screenHight,
        child: Column(
          children: [
            // title
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      title??'',
                      style:
                          const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  ),
                  // subttitle
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(subtitle??''),
                  ),
                ],
              ),
            ),
            // app icon
            Expanded(
              flex: 2,          
              child: Image.asset(APP_LOGO , width: 120,),
            ),
            //form section
            Expanded(
              flex: 10,
              child: child?? Container(color: Colors.red,),
            ),
          ],
        ),
      );
  }
}