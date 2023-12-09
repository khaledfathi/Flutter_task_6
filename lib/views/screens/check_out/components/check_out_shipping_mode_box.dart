import 'package:flutter/material.dart';
import 'package:task_l5/views/shared/container_with_shadow.dart';

class CheckOutShippingBox extends StatelessWidget {
  const CheckOutShippingBox({super.key});

  @override
  Widget build(BuildContext context) {
    return const ContainerWithShadow(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      height: 50,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Expanded(
              child: Text(
                'Flat Rate',
                textAlign: TextAlign.left,
              ),
            ),
            Expanded(
              child: Text(
                '\$120',
                textAlign: TextAlign.right,
              ),
            )
          ],
        ),
      ),
    );
  }
}
