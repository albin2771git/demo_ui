import 'package:demo_ui/screens/HomeScreem.dart';
import 'package:demo_ui/screens/mainScreen.dart';
import 'package:demo_ui/screens/splash/splashScreen.dart';
import 'package:demo_ui/screens/subScreens/birthdayScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(scaffoldBackgroundColor: Colors.black),
    // home: MainScreen(),
    home: SplashScreen(),
  ));
}
// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   SharedPreferences pref=await
// }
