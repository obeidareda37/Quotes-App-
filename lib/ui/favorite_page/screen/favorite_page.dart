import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quotes_app/ui/favorite_page/widget/item_message.dart';

class FavoritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        children: [
          ItemMessage(
              message:
                  '''اللهم ارزقنا ان نرى بيتك الحرام وان نقف عند رسولنك الكريم 
وان نشرب من انقى ماء ماء زمزم 
وكاللهم ارزقنا ان نرى بيتك الحرام وان نقف عند رسولنك الكريم 
وان نشرب من انقى ماء ماء زمزم 
وكل من قال امينوكل من قال امينوكل من قال امينوكل من قال امين'''),
          ItemMessage(
              message:
                  '''اللهم ارزقنا ان نرى بيتك الحرام وان نقف عند رسولنك الكريم 
وان نشرب من انقى ماء ماء زمزم 
وكل من قال امين'''),
          ItemMessage(
              message:
                  '''اللهم ارزقنا ان نرى بيتك الحرام وان نقف عند رسولنك الكريم 
وان نشرب من انقى ماء ماء زمزم 
وكل من قال امين'''),
          ItemMessage(
              message:
                  '''اللهم ارزقنا ان نرى بيتك الحرام وان نقف عند رسولنك الكريم 
وان نشرب من انقى ماء ماء زمزم 
وكل من قال امين'''),
          ItemMessage(
              message:
                  '''اللهم ارزقنا ان نرى بيتك الحرام وان نقف عند رسولنك الكريم 
وان نشرب من انقى ماء ماء زمزم 
وكل من قال امين'''),
          ItemMessage(
              message:
                  '''اللهم ارزقنا ان نرى بيتك الحرام وان نقف عند رسولنك الكريم 
وان نشرب من انقى ماء ماء زمزم 
وكل من قال امين'''),
        ],
      ),
    );
  }
}
