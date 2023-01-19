import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Student extends StatefulWidget {
  const Student({super.key});

  @override
  State<Student> createState() => _StudentState();
}

class _StudentState extends State<Student> {
  @override
  Map response = ({
    "status": "Success",
    "data": [
      "News",
      "Events",
      "Announcements",
      "Assignment",
      "Homework",
      "Chat",
      "SMS",
      "Birthday",
      "Student",
      "Staff",
      "Fee",
      "Class",
      "Leave",
      "Transportation"
    ]
  });

  // }
  // if(response.isEmpty){

  // }
  //}

  @override
  Widget build(BuildContext context) {
    List ColorsList = [
      Colors.red.shade500,
      Colors.blue.shade500,
      Colors.green.shade500,
      Colors.amber.shade500,
      Colors.purple.shade500,
      Colors.red.shade500,
      Colors.yellow.shade500
    ];
    return Scaffold(
      // body: Center(
      //     child: Text('Student',
      //         style: TextStyle(color: Colors.white, fontSize: 23))),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.grey.shade900, Colors.black])),
          child: GridView.builder(
              itemCount: response['data'].length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, crossAxisSpacing: 20, mainAxisSpacing: 20),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.blue.shade300),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      response['data'][index],
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                );
              }),
        ),
      ),
    );
  }
}
