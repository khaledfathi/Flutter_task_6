import 'package:flutter/material.dart';
import 'package:task_l5/views/screens/store/custom_appbar/notification_icon.dart';
import 'package:task_l5/views/screens/notification/notification_screen.dart';
import 'package:task_l5/views/screens/your_cart.dart/your_cart_screen.dart';

class CustomAppBar extends StatelessWidget implements PreferredSize {
  const CustomAppBar({super.key});
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget get child => this;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: SafeArea(
        child: Row(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                  margin: const EdgeInsets.only(left: 12 , right: 5),
                  height: 40,
                  child: const SearchBar(
                    leading: Icon(Icons.search),
                  )),
            ),
            Expanded(
              flex: 2,
              child: Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      NotificationIcon(notificiationCount: '3', iconData: Icons.shopping_cart_checkout_outlined, onTap: (){
                        Navigator.pushNamed(context, YourCartScreen.route);
                      },),
                      NotificationIcon(notificiationCount: '2', iconData: Icons.notification_important_outlined, onTap: (){
                        Navigator.pushNamed(context, NotificationScreen.route); 
                      },),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
