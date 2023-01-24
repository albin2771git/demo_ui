import 'package:flutter/material.dart';

class LoginWelcome extends StatelessWidget {
  LoginWelcome({Key? key, required this.username}) : super(key: key);
  String username;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'welcome $username',
          style: TextStyle(color: Colors.white, fontSize: 21),
        ),
      ),
    );
  }
}
