import 'package:flutter/material.dart';

class CircleContainer extends StatelessWidget {
  
  final double radius ; 
  final Widget? child ; 

  const CircleContainer({super.key,
    this.radius = 100,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius,
      height: radius,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(        
        color: Colors.red,
        borderRadius: BorderRadius.circular((radius/2)), 
      ),
      child: Container(
        color: Colors.yellow,
        child: child,
      ),
    );
  }
}