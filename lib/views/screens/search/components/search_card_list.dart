import 'package:flutter/material.dart';
import 'package:task_l5/controllers/services/constants/general_constants.dart';
import 'package:task_l5/views/shared/container_with_shadow.dart';

class SearchCardList extends StatelessWidget {
  const SearchCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerWithShadow(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      height: 100,
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.red,
                child: Image.asset(GERMMANY_FLAG_ICON, fit: BoxFit.cover),
              )),
          Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        alignment: Alignment.bottomLeft,
                        child: const Text('Product Name')),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: const Text('\$5230')),
                  ],
                ),
              )),
          Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                child: const Icon(Icons.add_shopping_cart_outlined),
              )),
        ],
      ),
    );
  }
}
