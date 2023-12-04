import 'package:flutter/material.dart';
import 'package:task_l5/views/login/components/custom_text_field.dart';
import 'package:task_l5/views/login/components/submit_section.dart';
import 'package:task_l5/views/login/components/social_media_button.dart';

class LoginForm extends StatelessWidget {
  final TextEditingController? emailController;
  final TextEditingController? passwordController;

  final EdgeInsets? margin;
  final void Function() onTapForgetPassword;
  final void Function() onTapLogin;
  final void Function() onTapSignUp;
  final void Function(bool? val)? onChangeCheckBox;
  final bool? checkBoxValue;

  const LoginForm({
    super.key,
    this.margin,
    this.emailController,
    this.passwordController,
    this.checkBoxValue,
    this.onChangeCheckBox,
    required this.onTapForgetPassword,
    required this.onTapLogin,
    required this.onTapSignUp,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: margin,
        child: Column(
          children: [
            CustomTextField(
              title: 'Email',
              hintText: 'e.g name@example.com',
              margin: const EdgeInsets.only(bottom: 10),
              controller: emailController,
            ),
            CustomTextField(
              title: 'Password',
              hintText: 'e.g ************',
              margin: const EdgeInsets.only(bottom: 10),
              controller: passwordController,
            ),
            SubmitSection(
              checkBoxValue: checkBoxValue ?? true,
              onTapForgetPassword: onTapForgetPassword,
              onChangeCheckBox: onChangeCheckBox,
              onTapLogin: onTapLogin,
            ),
            const SocialMediaButons(
              margin: EdgeInsets.only(top: 20),
            ),
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
                          'Don\'t have an account?',
                          style: TextStyle(fontSize: 16),
                        ),
                        TextButton(
                            onPressed: onTapSignUp,
                            child: const Text('SignUp',
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
