import 'package:flutter/material.dart';

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      height: 60,
      child: Stack(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
              boxShadow: const [
                BoxShadow(color: Colors.grey , offset: Offset(0,4) , blurRadius: 5),
              ]
            ),
            child: const Icon(Icons.shopping_cart_checkout , color: Colors.deepPurpleAccent,),
          ),
          Positioned(
              top: 3,
              right: 3,
              child: Container(
                width: 20,
                height: 20,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: const Text('12',style:TextStyle( color: Colors.white,)),
              )),
        ],
      ),
    );
  }
}
