import 'package:flutter/material.dart';
import 'package:task_l5/views/screens/contact_us/components/contact_block.dart';
import 'package:task_l5/views/shared/custom_text_field.dart';

class ContactUs extends StatelessWidget {
  static const String route = 'contact-us';

  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Contact Us'),
          centerTitle: true,
        ),
        body: ListView(
          children:  [
             const ContactBlock(
                title: 'Phone',
                subtitle: '+1234567890123',
                iconData: Icons.phone_android_rounded),
             const ContactBlock(
                title: 'Email',
                subtitle: 'Hello@example.com',
                iconData: Icons.phone_android_rounded),
            const CustomTextField(
              title: 'Subject',
              hintText: 'Type your subject here',
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 13),
            ),
            const CustomTextField(
              height: 200,
              title: 'Your message',
              hintText: 'Your message here ... ',
              margin: EdgeInsets.symmetric(horizontal: 20),
            ),
            Container(              
              height: 90,
              padding: const EdgeInsets.all(20),
              child: MaterialButton(
                color: Colors.deepPurpleAccent,
                onPressed: (){},
                child: const Text('Send', 
                style: TextStyle(color : Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
