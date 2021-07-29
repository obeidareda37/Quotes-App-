import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyDrawerHeader extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return   Container(
      color: Color(0xff3797A4),
      width: double.infinity,
      height: 205.h,
      padding: EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 70.h,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/icon.png'),
                )),
          ),
          Text(
            'مسجاتي',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }

}