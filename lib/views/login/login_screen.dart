import 'package:flutter/material.dart';
import 'package:task_l5/controllers/login/login_args.dart';
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
  //screen controller
  final LoginController _controller = LoginController();

  //input controllers
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  //values
  bool? _checkBoxValue;

  //screen sizes
  late double _screenHight ; 
  late double _screenWidth ; 

  //screen args 
  late LoginArgs? _args ; 

  @override
  Widget build(BuildContext context) {
    _useArgs(context); 
    _setMediaQuerySizes(context); 

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 20,
      ),
      body: BaseAuthUI(
        screenWidth: _screenWidth,
        screenHight: _screenHight,
        title: 'Welcome Back !',
        subtitle: 'Login to your existing account',
        child: LoginForm(
            emailController: _emailController,
            passwordController: _passwordController,
            checkBoxValue: _checkBoxValue,
            onTapSignUp: () => Navigator.pushNamed(context, SignUpScreen.route),
            onChangeCheckBox: (val) => setState(() {
                  _checkBoxValue = val;
                }),
            onTapForgetPassword: () {},
            onTapLogin: () {
              _controller.login(context,
                  email: _emailController.text,
                  password: _passwordController.text);
            }),
      ),
    );
  }

  void _setMediaQuerySizes (BuildContext context){
    _screenHight = MediaQuery.sizeOf(context).height;
    _screenWidth = MediaQuery.sizeOf(context).width;
  }
  void _useArgs(BuildContext context){
    try {
       _args = ModalRoute.of(context)!.settings.arguments as LoginArgs;
      _emailController.text = _args!.email;
      _passwordController.text = _args!.password;
    } catch (e) {null;}
  }
}
