import 'package:flutter/material.dart';

class AlertErrorScreen extends StatelessWidget {
  final String message; 
  static String route = 'alert-error';
  const AlertErrorScreen({super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      icon: const Icon(
        Icons.dangerous,
        color: Colors.red,
      ),
      title: Text(message),
      titleTextStyle: const TextStyle(fontSize: 16 , color: Colors.black),
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        ElevatedButton(
            onPressed: () => Navigator.of(context).pop(), child: Text('Ok')),
      ],
    );
  }
}
