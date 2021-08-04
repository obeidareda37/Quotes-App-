import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quotes_app/helpers/database_helper/database_helper.dart';
import 'package:quotes_app/models/message.dart';
import 'package:quotes_app/widget/item_message.dart';

class FavoritePage extends StatefulWidget {
  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  List<Message>message = List<Message>();

  getMessageFromFavorite() async {
    message =
    await DatabaseHelper.databaseHelper.getAllFavorite();
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getMessageFromFavorite();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return ItemMessage(
              message: message[index],
            );
          },
          itemCount: message.length,
        ),
      ),
    );
  }
}
