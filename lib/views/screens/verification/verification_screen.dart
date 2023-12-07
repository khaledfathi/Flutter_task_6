import 'package:flutter/material.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';
import 'package:task_l5/controllers/screens/verification/verification_args.dart';
import 'package:task_l5/controllers/screens/verification/verification_controller.dart';

class VerificationScreen extends StatefulWidget {
  static const String route = 'verification';
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  //screen controller
  final VerificationController _controller = VerificationController();

  //values
  String? _verifyCode; 

  //screen sizes
  late double _screenHight;
  late double _screenWidth;

  //screen args
  late VerificationArgs _args;

  @override
  Widget build(BuildContext context) {
    _useArgs(context);
    _setMediaQuerySizes(context);

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(),
      body: Container(
        width: _screenWidth,
        height: _screenHight,
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                'Verification',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            // subttitle
            Container(
              alignment: Alignment.centerLeft,
              child: const Text('Please enter the OTP code sent to you by SMS'),
            ),
            Container(
              width: _screenWidth * 0.8,
              margin: const EdgeInsets.only(top: 100),
              child: PinCodeFields(                
                length: 4,
                fieldWidth: 10,
                fieldBorderStyle: FieldBorderStyle.square,
                borderRadius: BorderRadius.circular(10),
                onComplete: (code) {
                  _verifyCode = code;  
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Didn\'t get a code? '),
                TextButton(onPressed: () {}, child: const Text('Send again')),
              ],
            ),

            Expanded(
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                        margin: const EdgeInsets.only(bottom: 30),
                        width: double.infinity,
                        color: Colors.deepPurpleAccent,
                        child: MaterialButton(
                          onPressed: () => _controller.verify(context, _verifyCode , _args),
                          child: const Text(
                            'Verify',
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _setMediaQuerySizes(BuildContext context) {
    _screenHight = MediaQuery.sizeOf(context).height;
    _screenWidth = MediaQuery.sizeOf(context).width;
  }

  void _useArgs(BuildContext context) {
    _args = ModalRoute.of(context)!.settings.arguments as VerificationArgs;
  }
}
