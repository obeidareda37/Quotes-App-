import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quotes_app/ui/home_page/home_page.dart';
import 'package:quotes_app/ui/star_page/star_page.dart';

import 'list_tile_widget.dart';

class MyDrawerList extends StatefulWidget {
  @override
  _MyDrawerListState createState() => _MyDrawerListState();
}

class _MyDrawerListState extends State<MyDrawerList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: Column(
        children: [
          ListTileWidget(
            icon: Icon(
              Icons.home_outlined,
              color: Color(0xff3797A4),
            ),
            title: 'الصفحة الرئيسية',
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            ),
          ),
          ListTileWidget(
            icon: Icon(
              Icons.star,
              color: Color(0xff3797A4),
            ),
            title: 'قيم التطبيق',
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => StarPage(),
              ),
            ),
          ),
          Divider(
            color: Colors.black,
            endIndent: 60,
          ),
          ListTileWidget(
            icon: Icon(
              Icons.share,
              color: Color(0xff3797A4),
            ),
            title: 'مشاركة التطبيق',
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            ),
          ),
          ListTileWidget(
            icon: Icon(
              Icons.send,
              color: Color(0xff3797A4),
            ),
            title: 'التواصل معنا',
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
