import 'package:flutter/material.dart';

class AlertSuccessScreen extends StatelessWidget {
  final String message; 
  final void Function () onPress; 
  static String route = 'alert-error';
  const AlertSuccessScreen({super.key,
    required this.message,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      icon: const Icon(
        Icons.info_outline_rounded,
        color: Colors.blue,
      ),
      title: Text(message),
      titleTextStyle: const TextStyle(fontSize: 16 , color: Colors.black),
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        ElevatedButton(
            onPressed: onPress,
            child: Text('ok'),
        ),
      ],
    );
  }
}
