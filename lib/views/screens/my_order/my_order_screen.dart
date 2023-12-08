import 'package:flutter/material.dart';
import 'package:task_l5/views/screens/my_order/components/order_box.dart';
import 'package:task_l5/views/shared/container_with_shadow.dart';

class MyOrderScreen extends StatelessWidget {
  static const String route = 'my-order';

  const MyOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('My Order'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index){
            return OrderBox(); 
          },
        ),
      ),
    );
  }
}
