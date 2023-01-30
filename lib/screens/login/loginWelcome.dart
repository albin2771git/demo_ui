import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginWelcome extends StatefulWidget {
  LoginWelcome({Key? key,}) : super(key: key);

  @override
  State<LoginWelcome> createState() => _LoginWelcomeState();
}

class _LoginWelcomeState extends State<LoginWelcome> {
  @override
  void initState() {
    // TODO: implement initState
    initial();
    super.initState();
  }
late SharedPreferences logindata;

 String? username;
void initial()async{
  logindata=await SharedPreferences.getInstance();
  setState(() {
    username=logindata.getString('username')!;

  });
}
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
