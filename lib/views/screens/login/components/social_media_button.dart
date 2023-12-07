import 'package:flutter/material.dart';
import 'package:task_l5/controllers/services/constants/general_constants.dart';
import 'package:task_l5/views/screens/login/components/rounded_image.dart';

class SocialMediaButons extends StatelessWidget {
  final EdgeInsets? margin ; 
  const SocialMediaButons({super.key,
    this.margin
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: const  Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          RoundedImage(imagePath: FACEBOOK_ICON),
          RoundedImage(imagePath: GOOGLE_ICON),
        ],
      ),
    );
  }
}