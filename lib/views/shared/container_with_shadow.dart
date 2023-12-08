import 'package:flutter/material.dart';

class ContainerWithShadow extends StatelessWidget {

  final double? height; 
  final double? width; 
  final Widget? child; 
  final EdgeInsets? margin;
  final EdgeInsets? padding;

  const ContainerWithShadow({super.key,
    this.height,
    this.width,
    this.child,
    this.margin,
    this.padding
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      margin: margin ?? const EdgeInsets.all(20),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(color: Colors.grey, offset: Offset(3, 3), blurRadius: 6),
          ]),
          child: child,
    );
  }
}
