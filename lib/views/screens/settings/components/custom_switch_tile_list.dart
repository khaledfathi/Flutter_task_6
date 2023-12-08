import 'package:flutter/material.dart';

class CustomSwitchTileList extends StatelessWidget {
  final String title;
  final String switchText;
  final bool value;
  final void Function(bool) onChange;

  const CustomSwitchTileList(
      {super.key,
      required this.title,
      required this.switchText,
      required this.value,
      required this.onChange});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SwitchListTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title),
            Text(switchText),
          ],
        ),
        value: value,
        onChanged: onChange,
      ),
    );
  }
}
