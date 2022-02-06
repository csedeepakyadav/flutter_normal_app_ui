import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocaldbHelper {
  static Future saveToken({@required String? token}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("token", token!);
  }

  static Future<String?> getToken() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    if (sharedPreferences.containsKey("token")) {
      return sharedPreferences.getString("token");
    } else {
      return null;
    }
  }

  static Future removeAllSharedPref() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.clear();
  }
}
