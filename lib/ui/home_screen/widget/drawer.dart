import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quotes_app/ui/home_screen/widget/my_drawer_header.dart';
import 'package:quotes_app/ui/home_screen/widget/my_drawer_list.dart';

class DrawerMenu extends StatefulWidget {
  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Column(
          children: [
            MyDrawerHeader(),
            MyDrawerList(),
          ],
        ),
      ),
    );
  }
}
