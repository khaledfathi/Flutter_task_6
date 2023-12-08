import 'package:flutter/material.dart';
import 'package:task_l5/controllers/screens/profile/profile_controller.dart';
import 'package:task_l5/views/screens/language/language.dart';
import 'package:task_l5/views/screens/my_account/my_account_screen.dart';
import 'package:task_l5/views/screens/my_cards/my_cards_screen.dart';

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
          margin: const EdgeInsets.symmetric(horizontal:10 , vertical: 5),
          child: ListTile(
            leading: const Icon(Icons.person ,),
            title: const Text('My Account'),
            trailing: IconButton(onPressed: (){
              Navigator.of(context).pushNamed(MyAccountScreen.route).then((value) => setState((){}));
            }, icon: const Icon(Icons.arrow_forward_ios_rounded)),
          ),
        ),
        Card(
          child: ListTile(
            leading:const Icon(Icons.shopping_bag ,),
            title: const Text('My Order'),
            trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_rounded)),
          ),
        ),
        Card(
          child: ListTile(
            leading: const Icon(Icons.language_outlined,),
            title: const Text('Language'),
            trailing: IconButton(onPressed: (){
              Navigator.of(context).pushNamed(Language.route); 
            }, icon: const Icon(Icons.arrow_forward_ios_rounded)),
          ),
        ),
        Card(
          child: ListTile(
            leading: const Icon(Icons.pin_drop_outlined,),
            title: const Text('Shopping Address'),
            trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_rounded)),
          ),
        ),
        Card(
          child: ListTile(
            leading: const Icon(Icons.credit_card_outlined,),
            title: const Text('My Card'),
            trailing: IconButton(onPressed: (){
              Navigator.of(context).pushNamed(MyCardsScreen.route); 
            }, icon: const Icon(Icons.arrow_forward_ios_rounded)),
          ),
        ),
        Card(
          child: ListTile(
            leading: const Icon(Icons.settings,),
            title: const Text('Settings'),
            trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_ios_rounded)),
          ),
        ),
        Card(
          child: ListTile(
            leading:const Icon(Icons.privacy_tip_outlined,),
            title:const Text('Privacy Policy'),
            trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_ios_rounded)),
          ),
        ),
        Card(
          child: ListTile(
            leading:const Icon(Icons.info_outlined,),
            title:const  Text('FAQ'),
            trailing: IconButton(onPressed: (){}, icon:const Icon(Icons.arrow_forward_ios_rounded)),
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