import 'package:flutter/material.dart';
import 'package:task_l5/controllers/login/login_controller.dart';
import 'package:task_l5/views/shared/base_auth_ui.dart';
import 'package:task_l5/views/login/components/login_form.dart';
import 'package:task_l5/views/signup/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  static const String route = 'login';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LoginController controller = LoginController();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool? checkBoxValue;

  @override
  Widget build(BuildContext context) {
    double screenHight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 20,
      ),
      body: BaseAuthUI(
        screenWidth: screenWidth,
        screenHight: screenHight,
        title: 'Welcome Back !',
        subtitle: 'Login to your existing account',
        child: LoginForm(
            emailController: emailController,
            passwordController: passwordController,
            checkBoxValue: checkBoxValue,
            onTapSignUp: ()=>Navigator.pushNamed(context, SignUpScreen.route),
            onChangeCheckBox: (val) => setState(() {
                  checkBoxValue = val;
                }),
            onTapForgetPassword: () {},
            onTapLogin: () {
              controller.login(context,
                  email: emailController.text,
                  password: passwordController.text);
            }),
      ),
    );
  }
}
