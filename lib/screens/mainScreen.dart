import 'package:demo_ui/screens/HomeScreem.dart';
import 'package:demo_ui/screens/classSection/class.dart';
import 'package:demo_ui/screens/feesSection/feesScreen.dart';
import 'package:demo_ui/screens/staff.dart';
import 'package:demo_ui/screens/student.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 2;
  void onItemTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  var body = [feesScreen(), ClassScreen(), HomeScreen(), Staff(), Student()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "PRINCIPAL'S DESK",
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            Text(
              "Eloit Academy, New Delhi",
              style: TextStyle(fontSize: 17),
            )
          ],
        ),
      ),
      drawer: Drawer(),
      body: body.elementAt(selectedIndex),
      // bottomNavigationBar: CoustomBottomNavi(),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.grey.shade900),
        child: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          onTap: onItemTap,

          // fixedColor: Colors.grey.shade900,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.money), label: 'fees'),
            BottomNavigationBarItem(icon: Icon(Icons.class_), label: 'class'),
            BottomNavigationBarItem(icon: Icon(Icons.grid_3x3), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.people_alt), label: 'Staff'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Student')
          ],
          currentIndex: selectedIndex,
        ),
      ),
    );
  }
}
