import 'package:flutter/material.dart';
import 'package:task_l5/controllers/services/constants/general_constants.dart';
import 'package:task_l5/views/shared/container_with_shadow.dart';

class YourCartProductBox extends StatelessWidget {
  const YourCartProductBox({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerWithShadow(
          margin: const EdgeInsets.symmetric(vertical: 8 , horizontal: 20),
          height: 100,
          child: Row(
            children: [
              Expanded(
                flex : 3,
                child: SizedBox(
                  height: double.infinity,
                  child: Image.asset(CHINESE_FLAG_ICON , fit: BoxFit.fill,),
                ),
              ),
              Expanded(
                flex : 6,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('My Product Name'),
                      SizedBox(height: 10,),
                      Text('\$4354'),
                    ],
                  ),            
                ),
              ),
              const Expanded(
                flex : 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.add),
                      Text('1'),
                      Icon(Icons.remove),
                    ],
                ),
              ),
            ],
          ),
        );
  }
}