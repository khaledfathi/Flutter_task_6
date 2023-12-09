import 'package:flutter/material.dart';

class CheckOutOrderSummaryBox extends StatelessWidget {
  const CheckOutOrderSummaryBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Row(
        children: [
          Expanded(
              child: Text(
            'Coupon',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          )),
          Expanded(
              child: Text(
            'add Coupon Code >',
            textAlign: TextAlign.end,
          )),
        ],
      ),
    );
  }
}
