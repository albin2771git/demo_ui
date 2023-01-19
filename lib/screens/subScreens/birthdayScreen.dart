import 'package:demo_ui/screens/subScreens/birthdayScreenWidgets/StaffBirthday.dart';
import 'package:demo_ui/screens/subScreens/birthdayScreenWidgets/studentBirthday.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../HomeScreem.dart';
import '../class.dart';
import '../fees.dart';
import '../staff.dart';
import '../student.dart';

class BirthdayScreen extends StatefulWidget {
  const BirthdayScreen({super.key});

  @override
  State<BirthdayScreen> createState() => _BirthdayScreenState();
}

class _BirthdayScreenState extends State<BirthdayScreen> {
  @override
  Widget build(BuildContext context) {
    // int selectedIndex = 2;
    // void onItemTap(int index) {
    //   setState(() {
    //     selectedIndex = index;
    //   });
    // }

    // var body = [Fees(), classSection(), HomeScreen(), Staff(), Student()];
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'Birthday',
            style: TextStyle(
                color: Colors.white, fontSize: 19, fontWeight: FontWeight.bold),
          ),
          bottom: TabBar(tabs: [
            Tab(
              text: "Student",
            ),
            Tab(
              text: "Staff",
            )
          ]),
        ),
        body: TabBarView(children: [StudentBirthday(), StaffBirthday()]),
        // bottomNavigationBar: Theme(
        //   data: Theme.of(context).copyWith(canvasColor: Colors.grey.shade900),
        //   child: BottomNavigationBar(
        //     selectedItemColor: Colors.blue,
        //     unselectedItemColor: Colors.grey,
        //     onTap: onItemTap,

        //     // fixedColor: Colors.grey.shade900,
        //     items: [
        //       BottomNavigationBarItem(icon: Icon(Icons.money), label: 'fees'),
        //       BottomNavigationBarItem(icon: Icon(Icons.class_), label: 'class'),
        //       BottomNavigationBarItem(
        //           icon: Icon(Icons.grid_3x3), label: 'Home'),
        //       BottomNavigationBarItem(
        //           icon: Icon(Icons.people_alt), label: 'Staff'),
        //       BottomNavigationBarItem(
        //           icon: Icon(Icons.person), label: 'Student')
        //     ],
        //     currentIndex: selectedIndex,
        //   ),
        // ),
      ),
    );
  }
}
