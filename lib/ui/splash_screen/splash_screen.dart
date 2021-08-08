import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:quotes_app/helpers/shared_pref.dart';
import 'package:quotes_app/provider/quotes_provider.dart';
import 'package:quotes_app/ui/home_screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    savedata() ;
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ),
      );
    });
  }

  void savedata() async{
    SharedHelper.sharedHelper.saveDate(true);

  }

  @override
  Widget build(BuildContext context) {
    Provider.of<QuotesProvider>(context).insertCategory();
    Provider.of<QuotesProvider>(context).insertMessage();
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color(0xff3797A4),
            Color(0xff34626C),
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        )),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/icon.png',
              fit: BoxFit.contain,
              width: 122.38.w,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Text(
                'مسجاتي',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
