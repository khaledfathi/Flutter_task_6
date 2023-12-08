import 'dart:io';

import 'package:flutter/material.dart';
import 'package:task_l5/controllers/auth/auth.dart';
import 'package:task_l5/controllers/screens/profile/profile_controller.dart';
import 'package:task_l5/views/screens/profile/components/profile_card_option.dart';
import 'package:task_l5/views/shared/circleContainer.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  //controller
  final ProfileController _controller = ProfileController();

  final String _userImage = Auth().currentUser.image!;
  final String _userName = Auth().currentUser.name!;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          SizedBox(
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleContainer(
                  radius: 100,
                  child: _userImageWidget(),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(_userName),
              ],
            ),
          ),
          ProfileCardOption(profileController: _controller),
        ],
      ),
    );
  }

  Widget _userImageWidget() {
    if (_userImage == 'null') {
      return const Icon(
        Icons.person,
        size: 50,
      );
    }
    File image = File(_userImage);
    return Image.file(image,
      fit: BoxFit.cover,
    );
  }
}
