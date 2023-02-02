import 'dart:convert';
import 'package:demo_ui/screens/login/LineWidget.dart';
import 'package:demo_ui/screens/login/loginWelcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
//  Datafromapi Datafromapifetch = Datafromapi();

  var formkey = GlobalKey<FormState>();
  late SharedPreferences logindata;
  late bool newuser;

  final _storage = FlutterSecureStorage();
  TextEditingController uri = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  bool islogged = false;

//---------variable for used to store url,username,password in locally
  var urlstored;
  var usernamestored;
  var passwordstored;

  var userdetails;

//---------------

  var fetchdata;

  //----------------------
  @override
  void initState() {
    // TODO: implement initState
    check_user_islogged();
    _readFromStorage();
    super.initState();
  }

  void check_user_islogged() async {
    logindata = await SharedPreferences.getInstance();
    newuser = (logindata.getBool('login') ?? true);
    // print('newUser');

    if (newuser == false) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginWelcome()));
    }
  }

  // get id => null;
// late SharedPreferences SharedPreferences;
  //DataModelapi datafetchapi=DataModelapi();

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
                          logindata.setBool('login', false);
                          logindata.setString('username', username.text);
                          logindata.setString('url', uri.text);
                          logindata.setString('password', password.text);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginWelcome()));
                          _onSubmit();
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
  //
  Future addUser() async {
    Map data = {"username": username.text, "password": password.text};
    var body = jsonEncode(data);

    http.Response response =
        await http.post(Uri.parse(uri.text + '/api/v2/principal/auth/login'),
            headers: {"Content-Type": "Application/json"},

            //---------
            body: body);

    //------------
    var fetchdata = jsonDecode(response.body);
    print(fetchdata['data']['token']);

    //-------------
    await _storage.write(
        key: 'userdetailsfetch', value: jsonEncode(fetchdata['data']));
    userdetails = await _storage.read(key: 'userdetailsfetch') ?? '';
    print(userdetails);
    //----------

    // logindata.setString('username', username.text);
    // Datafromapifetch=fetchdata['data'];
    // print('hello ${Datafromapifetch.data?.id!}');

    // User user=User.fromJson(jsonDecode(response.body));
    // print('response body=${user.id}');

    //---------------

    // print(response.body);
    // print('token is ${response.body}');
    // fetchdata=response.body.toString();
    // print(fetchdata[5].toString());
  }

  //-----------storing login url,username,password
  _onSubmit() async {
    await _storage.write(key: 'urlvalue', value: uri.text);
    await _storage.write(key: 'usernamevalue', value: username.text);
    await _storage.write(key: 'passwordvalue', value: password.text);
    //--------
  }

  Future<void> _readFromStorage() async {
    uri.text = await _storage.read(key: 'urlvalue') ?? '';
    username.text = await _storage.read(key: 'usernamevalue') ?? '';
    password.text = await _storage.read(key: 'passwordvalue') ?? '';
    //------------------------
    urlstored = await _storage.read(key: 'urlvalue') ?? '';
    usernamestored = await _storage.read(key: 'usernamevalue') ?? '';
    passwordstored = await _storage.read(key: 'passwordvalue') ?? '';

    //-----------


    //------------------
    //userdetails = await _storage.read(key: 'userdetailsfetch') ?? '';

    // setState(() {
    //   islogged=!islogged;
    // });
    // if(islogged==true){
    //   Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginWelcome(username: username.text)));
    // }else{
    //
    // }
    print('Strored url is $urlstored');
    print('Strored username is $usernamestored');
    print('Strored password is $passwordstored');
    //----------
  }
  Future<void> deleteData()async{
    await _storage.delete(key: 'urlvalue');
    await _storage.delete(key: 'usernamevalue');
    await _storage.delete(key: 'passwordvalue');
  }
}

// // //
// class User {
//   final id;
//   final academicYearId;

// //   final String academicYear;
// //   final String roleId;
// //   final String token;
// //   final String name;
// //   final String imgUrl;
// //   final String designation;
// //   final bool tempPassword;
// //   final bool status;
// //   final String message;
// //   final String schoolName;
// //   final int mobileNo;
// //   final String firebaseTopic;
// //   final bool otpSendStatus;
// //   final bool isTwoFactorAuthenticationEnabled;
// //
// User({
//   required this.id,
//   required this.academicYearId,
//     //  this.academicYear,
// //       this.roleId,
// //       this.token,
// //       this.name,
// //       this.imgUrl,
// //       this.designation,
// //       this.tempPassword,
// //       this.status,
// //       this.message,
// //       this.schoolName,
// //       this.mobileNo,
// //       this.firebaseTopic,
// //       this.otpSendStatus,
// //       this.isTwoFactorAuthenticationEnabled
//   });
// }
