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
  //screen controller
  final SignUpController _controller = SignUpController();

  //input controllers
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  //screen sizes
  late double _screenHight;
  late double _screenWidth;

  @override
  Widget build(BuildContext context) {
    _setMediaQuerySizes(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: BaseAuthUI(
        screenWidth: _screenWidth,
        screenHight: _screenHight,
        title: 'Sign Up',
        subtitle: 'Please enter your information below to sign up',
        child: SignUpForm(
          nameController: _nameController,
          emailController: _emailController,
          passwordController: _passwordController,
          onTapSignUp: () => _controller.signUp(context,
              name: _nameController.text,
              email: _emailController.text,
              password: _passwordController.text),
          onTapSignin: () => _controller.signIn(context),
        ),
      ),
    );
  }

  void _setMediaQuerySizes(BuildContext context) {
    _screenHight = MediaQuery.sizeOf(context).height;
    _screenWidth = MediaQuery.sizeOf(context).width;
  }
}
