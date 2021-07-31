import 'package:flutter/material.dart';
import 'package:quotes_app/helpers/database_helper/database_helper.dart';
import 'package:quotes_app/helpers/shared_pref.dart';
import 'package:quotes_app/models/category.dart';
import 'package:quotes_app/ui/home_page/widget/item_category.dart';
import 'package:quotes_app/ui/message_details/message_detail.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Category> category = List<Category>();
  Category category1 = Category();

  getCategory() async {
    category = await DatabaseHelper.databaseHelper.getAllCategory();
    setState(() {});
  }

  insertCategory() async {
    ListCategory.forEach((element) async {
      category1 = element;
      await DatabaseHelper.databaseHelper.insertCategory(category1);
      setState(() {});
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (SharedHelper.sharedHelper.getUser() != null) {
      getCategory();
    } else {
      insertCategory();
      getCategory();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return ItemCategory(
            category: category[index],
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                      MessageDetails(category: category[index]),
                ),
              );
            },
          );
        },
        itemCount: category.length,
      ),
    );
  }
}
