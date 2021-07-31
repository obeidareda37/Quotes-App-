import 'package:flutter/material.dart';
import 'package:quotes_app/helpers/shared_pref.dart';
import 'package:quotes_app/ui/favorite_page/screen/favorite_page.dart';
import 'package:quotes_app/ui/home_page/screen/home_page.dart';
import 'package:quotes_app/ui/home_screen/widget/drawer.dart';
import 'package:quotes_app/ui/star_page/screen/star_page.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  List<Widget> screens = [
    HomePage(),
    FavoritePage(),
    StarPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff3797A4),
        title: Text("مسجاتي"),
      ),
      drawer: DrawerMenu(),
      body: Center(

        child: screens.elementAt(index),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (tapedIndex) {
          this.index = tapedIndex;
          setState(() {
          });
        },
        selectedItemColor: Color(0xff3797A4),
        currentIndex: index,
        items: [
          BottomNavigationBarItem(

            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Rating',
          ),
        ],
      ),
    );
  }
}
