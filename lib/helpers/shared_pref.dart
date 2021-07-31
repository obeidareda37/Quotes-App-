import 'package:shared_preferences/shared_preferences.dart';

class SharedHelper {
  SharedHelper._();
  static SharedHelper sharedHelper = SharedHelper._();
  SharedPreferences sharedPreferences;

  initSharedPreferences()async{
    sharedPreferences = await SharedPreferences.getInstance();
  }

  saveDate(String firstTime){
    sharedPreferences.setString('firstTime', firstTime);
    print(firstTime);
  }

  getUser(){
    String firstTime = sharedPreferences.getString('firstTime');
    print(firstTime);
    if(firstTime == null){
      return null;
    }
  }
}