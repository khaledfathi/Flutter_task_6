import 'package:flutter/material.dart';
import 'package:task_l5/controllers/auth/auth.dart';
import 'package:task_l5/views/shared/custom_text_field_no_label.dart';

class EditProfileForm extends StatelessWidget {
  //input controllers 
  final TextEditingController _nameController =TextEditingController(); 
  final TextEditingController _emailController =TextEditingController(); 
  
  final TextEditingController? phoneController ;
  final TextEditingController? countryController ;
  

  //current user logedin
  final String name = Auth().currentUser.name!; 
  final String email = Auth().currentUser.email!; 
  final String phone = Auth().currentUser.phone!; 
  final String country = Auth().currentUser.country!; 

  final void Function()? onSaveTap; 

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
