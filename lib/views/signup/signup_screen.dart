import 'package:flutter/material.dart';
import 'package:task_l5/controllers/signup/signup_controller.dart';
import 'package:task_l5/views/shared/base_auth_ui.dart';
import 'package:task_l5/views/signup/components/sign_up_form.dart';

class SignUpScreen extends StatefulWidget {
  static const String route = 'signup';

  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  SignUpController controller = SignUpController();

  TextEditingController nameController = TextEditingController(); 
  TextEditingController emailController = TextEditingController(); 
  TextEditingController passwordController = TextEditingController(); 

  @override
  Widget build(BuildContext context) {
    double screenHight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: BaseAuthUI(
        screenWidth: screenWidth,
        screenHight: screenHight,
        title: 'Sign Up',
        subtitle: 'Please enter your information below to sign up',
        child: SignUpForm(
          nameController: nameController,
          emailController: emailController,
          passwordController: passwordController,
          onTapSignUp: () => controller.signUp(context,
              name: nameController.text,
              email: emailController.text,
              password:passwordController.text
            ),
          onTapSignin: () => controller.signIn(context),
        ),
      ),
    );
  }
}
