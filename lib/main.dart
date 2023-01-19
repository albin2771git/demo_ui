import 'package:demo_ui/screens/HomeScreem.dart';
import 'package:demo_ui/screens/mainScreen.dart';
import 'package:demo_ui/screens/subScreens/birthdayScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(scaffoldBackgroundColor: Colors.black),
    home: MainScreen(),
    //  home: BirthdayScreen(),
  ));
}
