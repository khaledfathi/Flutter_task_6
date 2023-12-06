import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_l5/controllers/services/constants/general_constants.dart';

class CenterLogo extends StatelessWidget {
  const CenterLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Image.asset(
                APP_LOGO,
                width: 100,
                height: 100,
              ),
            ),
            const Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                'Ecommerce UI Theme',
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 30,
                    fontWeight: FontWeight.w900),
              ),
            ),
            const Padding(
                padding: EdgeInsets.only(top: 50),
                child: CircularProgressIndicator(
                    strokeWidth: 7,
                    strokeAlign: 5,
                    strokeCap: StrokeCap.round)),
          ],
        ),
      ),
    );
  }
}
