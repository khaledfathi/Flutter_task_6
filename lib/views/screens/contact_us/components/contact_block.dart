import 'package:flutter/material.dart';


class ContactBlock extends StatelessWidget {

  final String title; 
  final String subtitle; 
  final IconData iconData; 

  const ContactBlock({super.key, 
    required this.title,
    required this.subtitle,
    required this.iconData
  });

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 80,
      child: Row(
        children: [
           SizedBox(
            width: 100,
            child: Center(
              child: Icon(
                iconData,
                size: 40,
                color: Colors.deepPurpleAccent,
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, 
                  style: const TextStyle(fontSize: 16 , fontWeight: FontWeight.bold),
                ),
                Text(subtitle),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
