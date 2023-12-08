import 'package:flutter/material.dart';
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
              padding: EdgeInsets.all(10),
              child: Text(
                'Ecommerce UI Theme',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 25,
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
