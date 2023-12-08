import 'package:flutter/material.dart';

class MyCardsScreen extends StatelessWidget {
  static String route = 'my-cards'; 
  const MyCardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(      
        title: const Text('My Cards'),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right:20),
            child: Icon(Icons.add),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Image.asset('assets/images/app_images/credit_card_1.png' ,fit:  BoxFit.cover,),
            ),
            const SizedBox(height: 10,),
            SizedBox(
              width: double.infinity,
              child: Image.asset('assets/images/app_images/credit_card_2.png' ,fit: BoxFit.cover,),
            )
          ],
        ),
      ),
    );
  }
}