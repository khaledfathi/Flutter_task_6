import 'package:flutter/material.dart';
import 'package:task_l5/views/screens/home/home_screen.dart';

class PaymentSuccessScreen extends StatelessWidget {
  static const String route = 'payment-success';
  const PaymentSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Payment'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.check_circle_sharp,
              color: Colors.deepPurpleAccent,
              size: 70,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: const Text(
                'Payment Success',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20),
              ),
            ),
            const Text(
              'Your order will be processed and sent to you as soon as possible',
              textAlign: TextAlign.center,
            ),
            Container(
              height: 50,
              width: double.infinity,
              margin: const EdgeInsets.all(20),
              child: MaterialButton(
                onPressed: ()=> Navigator.pushNamedAndRemoveUntil(context, HomeScreen.route, (route) => false),
                color: Colors.deepPurpleAccent,
                textColor: Colors.white,
                child: const Text('Continue Shopping '),
              ),
            )
          ],
        ),
      ),
    );
  }
}
