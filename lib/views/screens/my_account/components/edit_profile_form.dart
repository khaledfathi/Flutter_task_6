import 'package:flutter/material.dart';
import 'package:task_l5/controllers/auth/auth.dart';
import 'package:task_l5/views/shared/custom_text_field_no_label.dart';

class EditProfileForm extends StatelessWidget {
  //input controllers 
  TextEditingController nameController =TextEditingController(); 
  TextEditingController emailController =TextEditingController(); 
  
  TextEditingController? phoneController ;
  TextEditingController? countryController ;
  

  //current user logedin
  String name = Auth().currentUser.name!; 
  String email = Auth().currentUser.email!; 
  
  EditProfileForm({super.key , 
    this.phoneController , 
    this.countryController,
  }){
    nameController.text = name; 
    emailController.text = email ; 
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFieldNoLabel(
          hintText: 'Name',
          enable: false,
          controller: nameController,
        ),
        CustomTextFieldNoLabel(
          hintText: 'Email',
          enable: false,
          controller: emailController,          
        ),
        CustomTextFieldNoLabel(
          hintText: 'Phone',
          controller: phoneController,
        ),
        CustomTextFieldNoLabel(
          hintText: 'Country',
          controller: countryController,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: MaterialButton(
            onPressed: () {},
            color: Colors.deepPurpleAccent,
            minWidth: double.infinity,
            height: 50,
            child: const Text('Save', style: TextStyle(color: Colors.white),),
          ),
        )
      ],
    );
  }
}
