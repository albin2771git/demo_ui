import 'dart:async';

import 'package:demo_ui/screens/login/loginScreen.dart';
import 'package:demo_ui/screens/mainScreen.dart';
import 'package:demo_ui/screens/splash/rowWIdgetline.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MainScreen())));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(color: Colors.black),
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 2,
                    decoration: BoxDecoration(color: Colors.transparent),
                    child: RowWidget()),
              ),
              Positioned(
                  bottom: 0,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    child: Image.asset(
                      'assets/edisappsplash.png',
                      fit: BoxFit.cover,
                    ),
                  )),
              Positioned(
                top: 240,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  color: Colors.transparent,
                  child: Center(
                    child: Image.asset(
                      'assets/logo.png',
                      width: 170,
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
