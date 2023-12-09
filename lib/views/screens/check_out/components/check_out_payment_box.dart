import 'package:flutter/material.dart';
import 'package:task_l5/controllers/services/constants/general_constants.dart';
import 'package:task_l5/views/shared/container_with_shadow.dart';

class CheckOutPaymentBox extends StatelessWidget {
  const CheckOutPaymentBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 65,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: _paymentBox(),
      ),
    );
  }

  List<Widget> _paymentBox() {
    List<String> paymentMethods = [
      PAYPAL_ICON,
      VISA_ICON,
      MASTER_CARD_ICON,
      GOOGLE_PAY_ICON,
      APPLE_PAY_ICON
    ];

    List<Widget> paymentBox = [];
    for (var methodIcon in paymentMethods) {
      paymentBox.add(ContainerWithShadow(
        margin: const EdgeInsets.symmetric(horizontal: 5 , vertical: 10),
        width: 100,
        child: Image.asset(
          methodIcon,
          fit: BoxFit.contain,
        ),
      ));
    }
    return paymentBox;
  }
}
