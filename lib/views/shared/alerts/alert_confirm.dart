import 'package:flutter/material.dart';

class AlertConfirm extends StatelessWidget {
  final String message; 
  final void Function () onConfirmPress; 
  const AlertConfirm({super.key,
    required this.message,
    required this.onConfirmPress,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      icon: const Icon(
        Icons.warning_amber_outlined,
        color: Colors.yellow,
      ),
      title: Text(message),
      titleTextStyle: const TextStyle(fontSize: 16 , color: Colors.black),
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        ElevatedButton(
            onPressed: onConfirmPress,
            child: const Text('Yes'),
        ),
        const SizedBox(width: 30,),
        ElevatedButton(onPressed: (){
          Navigator.of(context).pop(); 
        }, child: const Text('No')),
      ],
    );
  }
}
