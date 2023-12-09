import 'package:flutter/material.dart';
import 'package:task_l5/views/screens/category/category_screen.dart';
import 'package:task_l5/views/screens/profile/profile_screen.dart';
import 'package:task_l5/views/screens/search/search_screen.dart';
import 'package:task_l5/views/screens/store/store_screen.dart';
import 'package:task_l5/views/screens/wish_list/wish_list_screen.dart';

class HomeScreen extends StatefulWidget {
  static String route = 'home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   int _index = 0 ; 

  final List<Widget> screens =[
    const StoreScreen(),
    const CategoryScreen(), 
    const SearchScreen(),
    const WishListScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:screens[_index],
      
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.blue,
          currentIndex: _index,
          onTap: (currentIndex){
            _index = currentIndex ;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.store)),
            BottomNavigationBarItem(label: 'Category', icon: Icon(Icons.category)),
            BottomNavigationBarItem(label: 'Search', icon: Icon(Icons.search)),
            BottomNavigationBarItem(label: 'Wish list', icon: Icon(Icons.heart_broken)),
            BottomNavigationBarItem(label: 'Profile', icon: Icon(Icons.person)),
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
