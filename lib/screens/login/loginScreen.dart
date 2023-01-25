import 'dart:convert';

import 'package:demo_ui/screens/login/LineWidget.dart';
import 'package:demo_ui/screens/login/loginWelcome.dart';
import 'package:demo_ui/screens/splash/rowWIdgetline.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  var formkey = GlobalKey<FormState>();

  TextEditingController uri = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: Form(
        key: formkey,
        child: Column(
          children: [
            LineWIdget(),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 20,
              ),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  // shrinkWrap: true,

                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome',
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                    Text(
                      'Sign in to Continue',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 21,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Enter Your School URL,Username &\n Password to Sign in',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: uri,
                      validator: (uridata) {
                        if (uridata!.isEmpty) {
                          return 'enter url';
                        } else {
                          return null;
                        }
                      },
                      maxLines: 1,
                      textInputAction: TextInputAction.next,
                      style: TextStyle(color: Colors.white, fontSize: 19),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: 'School url',
                          labelStyle: TextStyle(color: Colors.grey),
                          hintText: 'Url',
                          hintStyle:
                              TextStyle(fontSize: 23, color: Colors.grey)),
                    ),
                    Container(
                      height: 2,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                            Colors.black,
                            Colors.grey,
                            Colors.black
                          ])),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: username,
                      validator: (usernamedata) {
                        if (!usernamedata!.contains('@')) {
                          return 'enter correct username';
                        } else {
                          return null;
                        }
                      },
                      maxLines: 1,
                      textInputAction: TextInputAction.next,
                      style: TextStyle(color: Colors.white, fontSize: 19),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: 'username',
                          labelStyle: TextStyle(color: Colors.grey),
                          hintText: 'username',
                          hintStyle:
                              TextStyle(fontSize: 19, color: Colors.grey)),
                    ),
                    Container(
                      height: 2,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                            Colors.black,
                            Colors.grey,
                            Colors.black
                          ])),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: password,
                      validator: (passworddata) {
                        if (passworddata!.isEmpty) {
                          return 'enter correct password';
                        } else {
                          return null;
                        }
                      },
                      obscureText: true,
                      textInputAction: TextInputAction.done,
                      maxLines: 1,
                      style: TextStyle(color: Colors.white, fontSize: 19),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: 'Password',
                          labelStyle: TextStyle(color: Colors.grey),
                          hintText: 'Password',
                          hintStyle:
                              TextStyle(fontSize: 19, color: Colors.grey)),
                    ),
                    Container(
                      height: 2,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                            Colors.black,
                            Colors.grey,
                            Colors.black
                          ])),
                    ),
                    SizedBox(
                      height: 60,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(color: Colors.grey.shade900),
                child: Center(
                  child: SizedBox(
                    width: 300,
                    child: ElevatedButton(
                      onPressed: () {
                        //  addUser();
                        final valid = formkey.currentState!.validate();
                        if (valid) {
                          addUser();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginWelcome(
                                        username: username.text,
                                      )));
                        } else {
                          Fluttertoast.showToast(
                              msg: "enter valid details",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,
                              // timeInSecForIosWeb: 1,
                              backgroundColor: Colors.red,
                              textColor: Colors.white,
                              fontSize: 16.0);
                        }
                      },
                      child: Text(
                        'Next',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future addUser() async {
    Map data = {"username": username.text, "password": password.text};
    var body = jsonEncode(data);

    final response = await http.post(
        Uri.parse(uri.text + '/api/v2/principal/auth/login'),
        headers: {"Content-Type": "Application/json"},
        body: body);

    print(response.body);
  }
}
