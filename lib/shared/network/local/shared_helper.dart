import 'package:shared_preferences/shared_preferences.dart';

class SharedHelper {
  static SharedPreferences? sharedPreference;

  static init() async {
    sharedPreference = await SharedPreferences.getInstance();
  }

  static Future<bool?> setBoolean(
      {required String key, required bool value}) async {
    return await sharedPreference!.setBool(key, value);
  }


  static bool? getBoolean({required String key}) {
    return sharedPreference!.getBool(key);
  }
}
