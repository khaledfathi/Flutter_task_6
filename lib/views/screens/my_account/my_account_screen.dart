import 'package:flutter/material.dart';
import 'package:task_l5/controllers/screens/my_account/my_account_controller.dart';
import 'package:task_l5/views/screens/my_account/components/profile_body.dart';

class MyAccountScreen extends StatefulWidget {
  //route name
  static const String route = 'my-account';
  const MyAccountScreen({super.key});

  @override
  State<MyAccountScreen> createState() => _MyAccountScreenState();
}

class _MyAccountScreenState extends State<MyAccountScreen> {
  //screen controller
  MyAccountController _controller = MyAccountController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit My Account'),
        centerTitle: true,
      ),
      body: ProfileBody(
        screenWidth: MediaQuery.sizeOf(context).width,
        controller: _controller ,
      ),
    );
  }


}
