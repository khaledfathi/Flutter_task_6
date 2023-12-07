import 'package:flutter/material.dart';
import 'package:task_l5/controllers/screens/profile/profile_controller.dart';
import 'package:task_l5/views/screens/profile/components/profile_card_option.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  //controller 
  final ProfileController _controller = ProfileController(); 

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children:  [
          const SizedBox(
            height: 200,
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(radius: 50,
                  child:Icon(Icons.person ,size: 70,) ,
                ), 
                SizedBox(height: 10,),
                Text('User Name',), 
              ],
            ),
          ),
          ProfileCardOption(profileController: _controller),
        ],
      ),
    );
  }
}
