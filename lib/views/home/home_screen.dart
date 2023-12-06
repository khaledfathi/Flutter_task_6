import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static String route = 'home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        flexibleSpace: SafeArea(
          child: Row(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    height: 40,
                    child: const SearchBar(
                      leading: Icon(Icons.search),
                    )),
              ),
              Expanded(
                flex: 2,
                child: Container(
                    padding: const EdgeInsets.all(5),
                    color: Colors.red,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(),
                        CircleAvatar(),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            height: 150,
            color: Colors.green,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [...createBox(20)],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            height: 250,
            color: Colors.blue,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [...createBox(20)],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            height: 250,
            color: Colors.yellow,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [...createBox(20)],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.blue,
          currentIndex: 0,
          items: const [
            BottomNavigationBarItem(label: 'label', icon: Icon(Icons.abc)),
            BottomNavigationBarItem(label: 'label', icon: Icon(Icons.abc)),
            BottomNavigationBarItem(label: 'label', icon: Icon(Icons.abc)),
            BottomNavigationBarItem(label: 'label', icon: Icon(Icons.abc)),
          ]),
    );
  }

  List<Widget> createBox(int count) {
    List<Widget> boxs = [];
    for (var i = 0; i < count; i++) {
      boxs.add(Container(
        width: 150,
        margin: const EdgeInsets.all(10),
        color: Colors.red,
      ));
    }
    return boxs;
  }
}
