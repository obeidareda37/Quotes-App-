import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:quotes_app/helpers/database_helper/database_helper.dart';
import 'package:quotes_app/helpers/shared_pref.dart';
import 'package:quotes_app/provider/quotes_provider.dart';
import 'package:quotes_app/ui/home_screen/home_screen.dart';
import 'package:quotes_app/ui/splash_screen/splash_screen.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await DatabaseHelper.databaseHelper.initDatabase();
  await SharedHelper.sharedHelper.initSharedPreferences();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<QuotesProvider>(
      create: (BuildContext context){
        return QuotesProvider();
      },
      child: ScreenUtilInit(
        designSize: Size(412,821),
        builder: () {
          return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: SplashScreen(),
        );
        },
      ),
    );
  }
}
