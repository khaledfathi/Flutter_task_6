import 'package:flutter/material.dart';
import 'package:task_l5/views/shared/container_with_shadow.dart';

class AddressBoxs extends StatelessWidget {
  const AddressBoxs({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerWithShadow(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      height: 120,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
                alignment: Alignment.topCenter,
                height: double.infinity,
                child: const Icon(Icons.pin_drop_rounded)),
          ),
          const Expanded(
              flex: 8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'John Doe +78347637823',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  // SizedBox(height: 10,),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                        'school street behind the official school , moghdouche, saido , lebanon, 1600'),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
