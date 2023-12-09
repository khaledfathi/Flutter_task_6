import 'package:flutter/material.dart';
import 'package:task_l5/views/screens/payment_success/payment_success_screen.dart';

class CheckOutFooter extends StatelessWidget {
  const CheckOutFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: Row(
        children: [
          const Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Total'),
                  Text(
                    '\$170',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: Container(
            height: 50,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: MaterialButton(
              textColor: Colors.white,
              color: Colors.deepPurpleAccent,
              onPressed: () =>Navigator.pushNamed(context, PaymentSuccessScreen.route ),
              child: const Text('Pay Now'),
            ),
          ))
        ],
      ),
    );
  }
}
