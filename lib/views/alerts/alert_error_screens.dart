import 'package:flutter/material.dart';

class AlertErrorScreen extends StatelessWidget {
  final String error; 
  static String route = 'alert-error';
  const AlertErrorScreen({super.key,
    required this.error,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      icon: const Icon(
        Icons.dangerous,
        color: Colors.red,
      ),
      title: Text(error),
      titleTextStyle: const TextStyle(fontSize: 16 , color: Colors.black),
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        ElevatedButton(
            onPressed: () => Navigator.of(context).pop(), child: Text('Ok')),
      ],
    );
  }
}
