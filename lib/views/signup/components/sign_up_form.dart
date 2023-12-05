import 'package:flutter/material.dart';
import 'package:task_l5/views/shared/custom_text_field.dart';

class SignUpForm extends StatelessWidget {
  final TextEditingController? nameController;
  final TextEditingController? emailController;
  final TextEditingController? passwordController;

  final EdgeInsets? margin;
  final void Function() onTapSignUp;
  final void Function() onTapSignin;

  const SignUpForm({
    super.key,
    this.margin,
    this.nameController,
    this.emailController,
    this.passwordController,
    required this.onTapSignUp,
    required this.onTapSignin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: margin,
        child: Column(
          children: [
            CustomTextField(
              title: 'Name',
              hintText: 'Please enter your name',
              margin: const EdgeInsets.only(bottom: 10),
              controller: nameController,
            ),
            CustomTextField(
              title: 'Email',
              hintText: 'Please enter your email',
              margin: const EdgeInsets.only(bottom: 10),
              controller: emailController,
            ),
            CustomTextField(
              title: 'Password',
              hintText: 'Please enter your password',
              margin: const EdgeInsets.only(bottom: 10),
              obscureText: true,
              controller: passwordController,
            ),
            Container(
                margin: const EdgeInsets.symmetric(vertical: 15),
                width: double.infinity,
                height: 50,
                child: MaterialButton(
                  onPressed: onTapSignUp,
                  color: Colors.deepPurple,
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.white),
                  ),
                )),
            Expanded(
                child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Already have an account?',
                          style: TextStyle(fontSize: 16),
                        ),
                        TextButton(
                            onPressed: onTapSignin,
                            child: const Text('Signin',
                                style: TextStyle(fontSize: 16))),
                      ],
                    ),
                  ),
                ),
              ],
            )),
          ],
        ));
  }
}
