import 'package:flutter/material.dart';
import 'package:task_l5/views/screens/home/components/notification_icon.dart';

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
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      NotificationIcon(),
                      NotificationIcon(),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
