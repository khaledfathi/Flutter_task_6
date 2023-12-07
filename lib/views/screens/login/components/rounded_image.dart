import 'package:flutter/material.dart';

class RoundedImage extends StatelessWidget {
  final String imagePath ;
  const RoundedImage({super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return        Container(
          width: 70,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(100),
            boxShadow: const [
              BoxShadow(color: Colors.grey, offset: Offset(0 , 6),blurRadius: 4 )
            ]
          ),
          child: Image.asset(imagePath, width: 100,fit:BoxFit.cover ,),
        );
  }
}