// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
//
// class functions{
//
//   final _storage = FlutterSecureStorage();
//   TextEditingController uri = TextEditingController();
//   TextEditingController username = TextEditingController();
//   TextEditingController password = TextEditingController();
//   var urlstored;
//   var usernamestored;
//   var passwordstored;
//
//   var userdetails;
//
// //---------------
//
//   var fetchdata;
//
//
//   Future addUser() async {
//     Map data = {"username": username.text, "password": password.text};
//     var body = jsonEncode(data);
//
//     http.Response response =
//     await http.post(Uri.parse(uri.text + '/api/v2/principal/auth/login'),
//         headers: {"Content-Type": "Application/json"},
//
//         //---------
//         body: body);
//
//     //------------
//     var fetchdata = jsonDecode(response.body);
//     print(fetchdata['data']['token']);
//
//     //-------------
//     await _storage.write(
//         key: 'userdetailsfetch', value: jsonEncode(fetchdata['data']));
//     userdetails = await _storage.read(key: 'userdetailsfetch') ?? '';
//     print(userdetails);
//     //----------
//
//   }
//
// //-----------storing login url,username,password
//   _onSubmit() async {
//     await _storage.write(key: 'urlvalue', value: uri.text);
//     await _storage.write(key: 'usernamevalue', value: username.text);
//     await _storage.write(key: 'passwordvalue', value: password.text);
//     //--------
//   }
//
//   Future<void> _readFromStorage() async {
//     uri.text = await _storage.read(key: 'urlvalue') ?? '';
//     username.text = await _storage.read(key: 'usernamevalue') ?? '';
//     password.text = await _storage.read(key: 'passwordvalue') ?? '';
//     //------------------------
//     urlstored = await _storage.read(key: 'urlvalue') ?? '';
//     usernamestored = await _storage.read(key: 'usernamevalue') ?? '';
//     passwordstored = await _storage.read(key: 'passwordvalue') ?? '';
//     //-----------------------------
//     print('Strored url is $urlstored');
//     print('Strored username is $usernamestored');
//     print('Strored password is $passwordstored');
//     //----------
//   }
//   Future<void>deleteData()async{
//     await _storage.delete(key: 'urlvalue');
//     await _storage.delete(key: 'usernamevalue');
//     await _storage.delete(key: 'passwordvalue');
//   }
// }