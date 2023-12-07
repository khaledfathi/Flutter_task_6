import 'package:flutter/material.dart';
import 'package:task_l5/controllers/screens/profile/profile_controller.dart';

class ProfileCardOption extends StatefulWidget {
  final ProfileController profileController; 
  const ProfileCardOption({super.key,
    required this.profileController,
  });

  @override
  State<ProfileCardOption> createState() => _ProfileOptionsState();
}

class _ProfileOptionsState extends State<ProfileCardOption> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(        
          margin: EdgeInsets.symmetric(horizontal:10 , vertical: 5),
          child: ListTile(
            leading: Icon(Icons.person ,),
            title: Text('My Account'),
            trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_rounded)),
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.shopping_bag ,),
            title: Text('My Order'),
            trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_rounded)),
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.language_outlined,),
            title: Text('Language'),
            trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_rounded)),
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.pin_drop_outlined,),
            title: Text('Shopping Address'),
            trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_rounded)),
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.credit_card_outlined,),
            title: Text('My Card'),
            trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_rounded)),
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.settings,),
            title: Text('Settings'),
            trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_rounded)),
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.privacy_tip_outlined,),
            title: Text('Privacy Policy'),
            trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_rounded)),
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.info_outlined,),
            title: Text('FAQ'),
            trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_rounded)),
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.logout,),
            title: Text('Log out'),
            trailing: IconButton(onPressed: ()=>widget.profileController.logout(context), icon: Icon(Icons.arrow_forward_ios_rounded)),
          ),
        ),

      ],
    );
  }
}