import 'package:flutter/material.dart';
import 'package:task_l5/views/shared/alerts/alert_confirm.dart';

class FloatingDeleteButton extends StatelessWidget {
  final void Function() onConfirmPress; 
  const FloatingDeleteButton({super.key,
    required this.onConfirmPress,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: (){
        showDialog(context: context,
          barrierDismissible: true,
          builder: ((context){
            return AlertConfirm(message: 'Are You sure?',
             onConfirmPress: onConfirmPress,
            );
          }));
      },
      tooltip: 'Delete All Users',
      backgroundColor: Colors.red,
      child: const Icon(
        Icons.delete_forever,
        color: Colors.white,
        size: 35,
      ),
    );
  }
}
