import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemCategory extends StatelessWidget{

  final String categoryName;
  final String categoryLength;

  ItemCategory({this.categoryName, this.categoryLength});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 6),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xffF5F5F5),
        borderRadius: BorderRadius.circular(15),
      ),
      height: 66.h,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),

        ),
        child: Container(
          padding: EdgeInsets.all(10),
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                categoryName,
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              Text(
                categoryLength,
                style: TextStyle(color: Colors.black, fontSize: 15),
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
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 6),
      width: double.infinity,
      height: 66.h,
      decoration: BoxDecoration(
        color: Color(0xffF5F5F5),
        borderRadius: BorderRadius.circular(13),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            categoryName,
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          Text(
           categoryLength,
            style: TextStyle(color: Colors.black, fontSize: 15),
          ),
        ],
      ),
    );
 */