import 'package:flutter/material.dart';
import 'package:task_l5/controllers/services/constants/general_constants.dart';
import 'package:task_l5/views/shared/container_with_shadow.dart';

class CheckOutCartBox extends StatelessWidget {
  const CheckOutCartBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: productsBoxs(),
      ),
    );
  }

  List<Widget> productsBoxs({int count=5}) {
    List<Widget> products = [];
    for (var i = 0; i < count; i++) {
      products.add(
        ContainerWithShadow(
          margin: const EdgeInsets.symmetric(horizontal: 14),
          width: 150,
          child: Image.asset(
            LAPTOP_IMAGE,
            fit: BoxFit.cover,
          ),
        ),
      );
    }
    return products; 
  }
}
