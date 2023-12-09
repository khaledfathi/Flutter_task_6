import 'package:flutter/material.dart';
import 'package:task_l5/views/shared/container_with_shadow.dart';

class CheckOutAddressBox extends StatelessWidget {
  const CheckOutAddressBox({super.key});

  @override
  Widget build(BuildContext context) {
    return const ContainerWithShadow(
      height: 100,
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      padding: EdgeInsets.all(20),
      child: Text(
          'John Doe +9534879984\nSchool Street behind maghdouch, Saida , Lebanon, 1600'),
    );
  }
}
