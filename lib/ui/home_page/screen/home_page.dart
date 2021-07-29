import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quotes_app/ui/home_page/widget/item_category.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    print(MediaQuery.of(context).size.height);

    return Scaffold(
      body:ListView(
        children: [
        ItemCategory(categoryLength: '128',categoryName: 'مسجات اسلامية',),
        ItemCategory(categoryLength: '128',categoryName: 'مسجات حب وغرام',),
        ItemCategory(categoryLength: '128',categoryName: 'مسجات شوق وحنين',),
        ItemCategory(categoryLength: '128',categoryName: 'مسجات وداع وفراق',),
        ItemCategory(categoryLength: '128',categoryName: 'مسجات مدح',),
        ItemCategory(categoryLength: '128',categoryName: 'مسجات العيد',),
        ],
      ),
    );
  }
}
