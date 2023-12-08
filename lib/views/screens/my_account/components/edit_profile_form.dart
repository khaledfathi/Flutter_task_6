import 'package:flutter/material.dart';
import 'package:task_l5/controllers/auth/auth.dart';
import 'package:task_l5/views/shared/custom_text_field_no_label.dart';

class EditProfileForm extends StatelessWidget {
  //input controllers 
  TextEditingController _nameController =TextEditingController(); 
  TextEditingController _emailController =TextEditingController(); 
  
  TextEditingController? phoneController ;
  TextEditingController? countryController ;
  

  //current user logedi
  String name = Auth().currentUser.name!; 
  String email = Auth().currentUser.email!; 
  String phone = Auth().currentUser.phone!; 
  String country = Auth().currentUser.country!; 

  void Function()? onSaveTap; 

  EditProfileForm({super.key , 
    this.phoneController , 
    this.countryController,
    this.onSaveTap,    
  }){
    _nameController.text = name; 
    _emailController.text = email ; 
    phoneController!.text = phone ; 
    countryController!.text = country ; 
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFieldNoLabel(
          hintText: 'Name',
          enable: false,
          controller: _nameController,
        ),
        CustomTextFieldNoLabel(
          hintText: 'Email',
          enable: false,
          controller: _emailController,          
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
            onPressed: onSaveTap,
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
