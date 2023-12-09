import 'package:flutter/material.dart';
import 'package:task_l5/views/screens/check_out/check_out_screen.dart';

class YourCartFooter extends StatelessWidget {
  const YourCartFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.only(left: 10),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Subtotal'),
                  Text('data'),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '\$150',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '\$170',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, CheckOutScreen.route);
                },
                height: 50,
                color: Colors.deepPurpleAccent,
                child: const Text(
                  'Check Out',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
