import 'package:flutter/material.dart';

class NotificationIcon extends StatelessWidget {
  final IconData iconData ; 
  final String? notificiationCount ; 
  final void Function () onTap ;   
  
  
  const NotificationIcon({super.key, 
    required this.onTap, 
    required this.iconData,
    this.notificiationCount ,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      height: 60,
      child: Stack(
        children: [
          InkWell(
            onTap: onTap,
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
                boxShadow: const [
                  BoxShadow(color: Colors.grey , offset: Offset(0,4) , blurRadius: 5),
                ]
              ),
              child:  Icon(iconData , color: Colors.deepPurpleAccent,),
            ),
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
                child:  Text(notificiationCount??'2' ,style:const TextStyle( color: Colors.white,)),
              )),
        ],
      ),
    );
  }
}
