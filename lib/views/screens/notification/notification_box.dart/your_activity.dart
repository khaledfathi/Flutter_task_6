import 'package:flutter/material.dart';
import 'package:task_l5/views/shared/container_with_shadow.dart';

class YourActivityBox extends StatelessWidget {
  final IconData iconData;
  final String title;
  final String subtitle;

  const YourActivityBox({
    super.key,
    required this.iconData,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ContainerWithShadow(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      height: 125,
      child: Row(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                margin: const EdgeInsets.only(top: 10),
                alignment: Alignment.topCenter,
                child: CircleAvatar(
                    child: Icon(
                  iconData,
                  size: 30,
                  color: Colors.deepPurpleAccent,
                )),
              )),
          Expanded(
              flex: 8,
              child: Container(
                padding: const EdgeInsets.all(8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(subtitle),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
