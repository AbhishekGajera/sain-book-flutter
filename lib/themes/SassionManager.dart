import 'package:shared_preferences/shared_preferences.dart';

class SassionManager {


  static Future<void> saveString({
    required String key,
    required String value,
  }) async {
    var prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
  }

  static Future<void> saveBoolean({required String key,required bool value}) async {
    var prefs = await SharedPreferences.getInstance();
     prefs.setBool(key, value);
  }

 static Future<String?> getString({required String key}) async {
   var prefs = await SharedPreferences.getInstance();
   return prefs.getString(key);
 }

  static Future<bool?> getBoolean({required String key}) async {
    var prefs = await SharedPreferences.getInstance();
    return prefs.getBool(key);
  }

}

class SassionConst {
  static String sample = "sample";
  static String islogin = "islogin";
  static String loginUserData = "loginUserData";
}
