import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quotes_app/ui/favorite_page/widget/icon_button_widget.dart';

class ItemMessage extends StatelessWidget {
  final String message;

  ItemMessage({this.message});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: 145.h,
        child: Card(
          margin: EdgeInsets.all(2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.all(17),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    color: Color(0xffe5e5e5),
                  ),
                  width: double.infinity,
                  child: Text(
                    message,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButtonWidget(
                        icon: Icon(
                          Icons.favorite_outline,
                          color: Color(0xff3797A4),
                        ),
                        onPressed: () {},
                      ),
                      IconButtonWidget(
                        icon: Icon(
                          Icons.bookmark_border,
                          color: Colors.black,
                        ),
                        onPressed: () {},
                      ),
                      IconButtonWidget(
                        icon: Icon(
                          CommunityMaterialIcons.facebook,
                          color: Colors.black,
                        ),
                        onPressed: () {},
                      ),
                      IconButtonWidget(
                        icon: Icon(
                          Icons.share,
                          color: Colors.black,
                        ),
                        onPressed: () {},
                      ),
                      IconButtonWidget(
                        icon: Icon(
                          Icons.content_copy,
                          color: Colors.black,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
/*
Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 1),
      width: double.infinity,
      height: 145.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffF5F5F5),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(14),
                  topLeft: Radius.circular(14),
                ),
              ),
              child: Text( message,
                maxLines: 4,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButtonWidget(
                      icon: Icon(
                        Icons.favorite_outline,
                        color: Color(0xff3797A4),
                      ),
                    ),
                    IconButtonWidget(
                      icon: Icon(
                        Icons.bookmark_border,
                        color: Colors.black,
                      ),
                    ),
                    IconButtonWidget(
                      icon: Icon(
                        CommunityMaterialIcons.facebook,
                        color: Colors.black,
                      ),
                    ),
                    IconButtonWidget(
                      icon: Icon(
                        Icons.share,
                        color: Colors.black,
                      ),
                    ),
                    IconButtonWidget(
                      icon: Icon(
                        Icons.content_copy,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
 */