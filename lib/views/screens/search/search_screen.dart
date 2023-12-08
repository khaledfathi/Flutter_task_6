import 'package:flutter/material.dart';
import 'package:task_l5/views/screens/search/components/search_card_list.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('WishList'),
          centerTitle: true,
          titleTextStyle: const TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
        ),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              height: 50,
              child: const SearchBar(
                leading: Icon(Icons.search),
                hintText: 'Search here ... ',
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const SearchCardList();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
