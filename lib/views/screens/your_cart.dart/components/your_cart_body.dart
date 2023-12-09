import 'package:flutter/material.dart';
import 'package:task_l5/views/screens/your_cart.dart/components/your_cart_product_box.dart';

class YourCartBody extends StatelessWidget {
  const YourCartBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        YourCartProductBox(),
        YourCartProductBox(),
        YourCartProductBox(),
        YourCartProductBox(),
        YourCartProductBox(),
        YourCartProductBox(),
        YourCartProductBox(),
      ],
    ); 
  }
}