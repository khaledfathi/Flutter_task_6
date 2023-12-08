import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:task_l5/controllers/auth/auth.dart';
import 'package:task_l5/controllers/screens/my_account/my_account_controller.dart';
import 'package:task_l5/views/screens/my_account/components/edit_profile_form.dart';
import 'package:task_l5/views/shared/circleContainer.dart';

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

  //current user logedin
  String _id = Auth().currentUser.id!;
  String _userName = Auth().currentUser.name!;
  String _userEmail = Auth().currentUser.email!;
  String _userImage = Auth().currentUser.image!;
  String _userPhone = Auth().currentUser.phone!;
  String _userCountry = Auth().currentUser.country!;

  //input controllers
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _countryController = TextEditingController();

  //image file
  File? _userProfileImageFile;

  @override
  void initState() {
    _phoneController.text = _userPhone;
    _countryController.text = _userCountry;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit My Account'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            height: 200,
            child: Stack(children: [
              Align(
                alignment: Alignment.center,
                child: CircleContainer(
                  radius: 150,
                  // child: _userImageWidget(),
                  child: _userImageWidget(),
                ),
              ),
              Positioned(
                  left: (screenWidth / 2) + 20,
                  bottom: 20,
                  child: CircleAvatar(
                    radius: 30,
                    child: IconButton(
                      onPressed: () async {
                        XFile? file;
                        String? appDir;

                        await ImagePicker()
                            .pickImage(source: ImageSource.camera)
                            .then((fileRecived) async {
                          file = fileRecived!;
                          _userProfileImageFile = File(file!.path);
                        });
                        await getApplicationDocumentsDirectory()
                            .then((directory) async {
                          appDir = directory.path;
                        });

                        String newPath = '$appDir/${file!.name}.${file!.mimeType}';
                        await _userProfileImageFile!.copy(newPath).then((file) {
                          _userProfileImageFile = file;
                        });

                        await _controller.updateAccount(
                          _id,
                          phone: _phoneController.text,
                          country: _countryController.text,
                          image: _userProfileImageFile!.path,
                        );
                        setState(() {});
                      },
                      icon: const Icon(
                        Icons.camera_alt_outlined,
                        size: 30,
                      ),
                    ),
                  )),
            ]),
          ),
          EditProfileForm(
            phoneController: _phoneController,
            countryController: _countryController,
          ),
        ],
      ),
    );
  }

  Widget _userImageWidget() {
    if (_userProfileImageFile != null) {
      return Image.file(
        _userProfileImageFile!,
        fit: BoxFit.cover,
      );
    } else if (_userImage != 'null') {
      File image = File(_userImage);
      return Image.file(image,
        fit: BoxFit.cover,
      );
    } else {
      return const Icon(
        Icons.person,
        size: 70,
      );
    }
  }
}
