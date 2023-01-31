import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class LoginWelcome extends StatefulWidget {
  // String urlcall;
  //   String usernamecall;
  //   String passwordcall;

  LoginWelcome({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginWelcome> createState() => _LoginWelcomeState();
}

class _LoginWelcomeState extends State<LoginWelcome> {
  @override
  void initState() {
    // TODO: implement initState
    initial();
    // fetchtoken();
    super.initState();
  }

  late SharedPreferences logindata;

  String? username;
  String? uri;
  String? password;

  void initial() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      username = logindata.getString('username')!;
      // uri = logindata.getString('url')!;
      // password = logindata.getString('password')!;
    });
  }

  // Future fetchtoken() async {
  //   Map data = {"username": username, "password": password};
  //   var body = jsonEncode(data);
  //   http.Response response = await http.post(
  //       Uri.parse(uri! + '/api/v2/principal/auth/login'),
  //       headers: {"Content-Type": "Application/json"},
  //       body: body);
  //   var fetchtoken = jsonDecode(response.body);
  //   print(fetchtoken['data']['token']);
  // }

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
