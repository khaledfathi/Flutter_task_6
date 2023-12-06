import 'package:flutter/material.dart';

class SubmitSection extends StatelessWidget {
  final void Function() onTapForgetPassword;
  final void Function() onTapLogin;
  final void Function(bool? val)? onChangeCheckBox;
  final bool checkBoxValue;

  const SubmitSection({
    super.key,
    required this.onTapForgetPassword,
    required this.onTapLogin,
    this.onChangeCheckBox,
    this.checkBoxValue = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Checkbox(value: checkBoxValue, onChanged: onChangeCheckBox),
                const Text('Remember me'),
              ],
            ),
            TextButton(
                onPressed: onTapForgetPassword,
                child: const Text('Forget Password')),
          ],
        ),
        Container(
            margin: const EdgeInsets.symmetric(vertical: 15),
            width: double.infinity,
            height: 50,
            child: MaterialButton(
              onPressed: onTapLogin,
              color: Colors.deepPurple,
              child: const Text(
                'Login',
                style: TextStyle(color: Colors.white),
              ),
            ))
      ],
    );
  }
}
