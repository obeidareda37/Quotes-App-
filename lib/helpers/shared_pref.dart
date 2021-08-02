import 'package:shared_preferences/shared_preferences.dart';

class SharedHelper {
  SharedHelper._();

  static SharedHelper sharedHelper = SharedHelper._();
  SharedPreferences sharedPreferences;

  initSharedPreferences() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  saveDate(bool firstTime) async {
    await sharedPreferences.setBool('firstTime', firstTime);
    print(firstTime);
  }

  Future<bool>getData() async {
    bool firstTime = await sharedPreferences.getBool('firstTime');
    print(firstTime);
    if (firstTime == null) {
      return null;
    }
    return firstTime;
  }
}
