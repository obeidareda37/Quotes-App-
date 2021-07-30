import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quotes_app/helpers/database_helper/database_helper.dart';
import 'package:quotes_app/ui/home_screen/screen/home_screen.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await DatabaseHelper.databaseHelper.initDatabase();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(412,821),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
