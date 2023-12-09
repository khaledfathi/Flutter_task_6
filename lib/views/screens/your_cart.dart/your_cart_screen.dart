import 'package:flutter/material.dart';
import 'package:task_l5/views/screens/your_cart.dart/components/your_cart_body.dart';
import 'package:task_l5/views/screens/your_cart.dart/components/your_cart_footer.dart';

class YourCartScreen extends StatelessWidget {
  static const String route = 'your-cart';


  const YourCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Your Cart'),
          centerTitle: true,
        ),
        body: SizedBox(
          width: screenWidth,
          height: screenHight,
          child: const Column(
            children: [
              //header
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text('5 Product'),
              ),
              //body
              Expanded(
                child: YourCartBody(),
              ),
              //footer
              YourCartFooter(),
            ],
          ),
        ),
      ),
    );
  }

}
