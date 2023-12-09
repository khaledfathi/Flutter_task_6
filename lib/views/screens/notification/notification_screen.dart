import 'package:flutter/material.dart';
import 'package:task_l5/views/screens/notification/notification_box.dart/notification_box.dart';
import 'package:task_l5/views/screens/notification/notification_box.dart/your_activity.dart';

class NotificationScreen extends StatelessWidget {
  static const String route = 'notification';
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Notifications'),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              // alignment: Alignment.center,
              child: const Text('Promotions',
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            const NotificationBox(),
            const NotificationBox(),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: const Text(
                'Your Activity',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const YourActivityBox(
              iconData: Icons.check,
              title: 'Order Arrived ',
              subtitle:
                  'Order 76587465347534687 has been completed and arrived at destination address (please rate your order)\nYesterday 10:45 AM',
            ),
            const YourActivityBox(
              iconData: Icons.assignment_turned_in_rounded,
              title: 'Order Success',
              subtitle:'Order 9857348954 has been Success. please wait for the product to be sent \nJuly 20 2020 08:00 AM' 
            ),
            const YourActivityBox(
              iconData: Icons.payment,
              title: 'Payment Confirmed',
              subtitle:'Payment for order 75647583687 has been Confirmed. please wait for the product to be sent' 
            ),
          ],
        ),
      ),
    );
  }
}
