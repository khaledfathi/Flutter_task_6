import 'package:flutter/material.dart';

class CheckOutSectionHeader extends StatelessWidget {
  final String title;
  final String ?trailing;

  const CheckOutSectionHeader({
    super.key,
    required this.title,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          Expanded(
            child: Text(title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Text(trailing??'', 
              textAlign: TextAlign.end,
            ),
          )
        ],
      ),
    );
  }
}
