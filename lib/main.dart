

import 'package:demo_ui/provider/provider_service.dart';

import 'package:demo_ui/screens/mainScreen.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context)=>userdetailsProvider(),),
  ],child: MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.black),
      home: MainScreen()) ,)
   
  );
}
