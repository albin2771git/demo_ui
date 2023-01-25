import 'package:flutter/material.dart';

class LoginWelcome extends StatelessWidget {
  LoginWelcome({Key? key, required this.username}) : super(key: key);
  String username;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Welcome',
        style: TextStyle(
            color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
      )),
      body: Center(
        child: Text(
          'welcome $username',
          style: TextStyle(color: Colors.white, fontSize: 21),
        ),
      ),
    );
  }
}
