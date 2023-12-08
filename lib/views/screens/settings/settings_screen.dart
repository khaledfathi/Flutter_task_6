import 'package:flutter/material.dart';
import 'package:task_l5/controllers/screens/settings/settings_controller.dart';
import 'package:task_l5/views/screens/settings/components/custom_switch_tile_list.dart';

class SettingsScreen extends StatefulWidget {
  static const String route = 'settings';

  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  //controller 
  SettingsController _controller = SettingsController(); 
  //switch states 
  bool _notificationSwitch = true;
  bool _themeSwitch = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Settings'),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            CustomSwitchTileList(
                title: 'Push Notification',
                switchText: 'On/Off',
                value: _notificationSwitch,
                onChange: (val) => setState(() {
                      _notificationSwitch = val;
                    })),
            CustomSwitchTileList(
                title: 'Theme',
                switchText: 'Light/Dark',
                value: _themeSwitch,
                onChange: (val) => setState(() {
                      _themeSwitch = val;
                    })),
            Card(
              child: ListTile(
                  title: const Text('Language'),
                  trailing: IconButton(
                      onPressed: () => _controller.goToLanguageScreen(context),
                      icon: const Icon(Icons.arrow_forward_ios_rounded))),
            ),
          ],
        ),
      ),
    );
  }
}
