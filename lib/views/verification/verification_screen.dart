import 'package:flutter/material.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';
import 'package:task_l5/controllers/verification/verification.dart';

class VerificationScreen extends StatefulWidget {
  static const String route = 'verification';
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  VerificationController controller = VerificationController(); 

  @override
  Widget build(BuildContext context) {
    double screenHight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(),
      body: Container(
        width: screenWidth,
        height: screenHight,
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
              width: screenWidth * 0.8,
              margin: const EdgeInsets.only(top: 100),
              child: PinCodeFields(
                length: 4,
                fieldWidth: 10,
                fieldBorderStyle: FieldBorderStyle.square,
                borderRadius: BorderRadius.circular(10),
                onComplete: (text) {
                  print(text);
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
                          onPressed: ()=>controller.verify(context),
                          child: const Text('Verify' , style: TextStyle(color: Colors.white),),
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
}
