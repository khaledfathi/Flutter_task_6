import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:task_l5/controllers/auth/auth.dart';
import 'package:task_l5/controllers/screens/my_account/my_account_controller.dart';
import 'package:task_l5/views/screens/my_account/components/edit_profile_form.dart';
import 'package:task_l5/views/shared/circleContainer.dart';
import 'package:task_l5/controllers/services/globals/globals.dart' as globals;

class ProfileBody extends StatefulWidget {
  MyAccountController controller;

  double screenWidth;

  ProfileBody({super.key, required this.controller, required this.screenWidth});

  @override
  State<ProfileBody> createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  //globals
  String _appDir = globals.appDir!;

  //input controller
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _countryController = TextEditingController();

  //current user logedin
  String _id = Auth().currentUser.id!;
  String _userName = Auth().currentUser.name!;
  String _userEmail = Auth().currentUser.email!;
  String _userImage = Auth().currentUser.image!;
  String _userPhone = Auth().currentUser.phone!;
  String _userCountry = Auth().currentUser.country!;

  //uploaded profile image
  File? _userUploadedImageFile;

  @override
  Widget build(BuildContext context) {
    return ListView(
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
                left: (widget.screenWidth / 2) + 20,
                bottom: 20,
                child: CircleAvatar(
                  radius: 30,
                  child: IconButton(
                    onPressed: () async {
                      XFile? file;
                      await ImagePicker()
                          .pickImage(source: ImageSource.camera)
                          .then((fileRecived) async {
                        file = fileRecived!;
                        _userUploadedImageFile = File(file!.path);
                      });
                      String newPath =
                          '$_appDir/${file!.name}.${file!.mimeType}';
                      await _userUploadedImageFile!.copy(newPath).then((file) {
                        _userUploadedImageFile = file;
                        setState((){});
                      });
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
          onSaveTap: () async => await widget.controller.updateAccount(
            Auth().currentUser.id!,
            phone: _phoneController.text,
            country: _countryController.text,
            image: _userUploadedImageFile,
          ).then((_) => Navigator.pop(context)),
        ),
      ],
    );
  }

  Widget _userImageWidget() {
    if (_userUploadedImageFile != null) {
      return Image.file(
        _userUploadedImageFile!,
        fit: BoxFit.cover,
      );
    } else if (_userImage != 'null') {
      File image = File(_userImage);
      return Image.file(
        image,
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
