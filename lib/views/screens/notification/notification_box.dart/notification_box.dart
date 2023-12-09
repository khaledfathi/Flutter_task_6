import 'package:flutter/material.dart';
import 'package:task_l5/controllers/services/constants/general_constants.dart';
import 'package:task_l5/views/shared/container_with_shadow.dart';

class NotificationBox extends StatelessWidget {
  const NotificationBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ContainerWithShadow(
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          padding: const EdgeInsets.all(10),
          height: 100,
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  margin: const EdgeInsets.only(right: 20),
                  height: double.infinity,
                  child: Image.asset(
                    GOOGLE_ICON,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
               const Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                      Text(
                        'Read this ',
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 16 ),
                    ),
                    Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry." , overflow: TextOverflow.ellipsis,),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
