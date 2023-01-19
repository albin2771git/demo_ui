import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Staff extends StatefulWidget {
  const Staff({super.key});

  @override
  State<Staff> createState() => _StaffState();
}

class _StaffState extends State<Staff> {
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
  List MyUpdates = [];
  List SchoolUpdates = [];
  @override
  void initState() {
    // TODO: implement initState

    setState(() {
      addData();
      AddAcedemics();
    });
  }

  void addData() {
    if (response['data'].contains('Chat') && response['data'].contains('SMS')) {
      MyUpdates.add('Chat');
      MyUpdates.add('SMS');
    }
  }

  void AddAcedemics() {
    if (response['data'].contains('Events') && response['data'].contains('News')
        // response['data'].contains('Birthday') &&
        // response['data'].contains('Assignment') &&
        // response['data'].contains('Homework')
        ) {
      SchoolUpdates.add('Events');
      SchoolUpdates.add('News');
      SchoolUpdates.add('Birthday');
      SchoolUpdates.add('Assignment');
      SchoolUpdates.add('HomeWork');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 0),
              child: Text(
                'My Updates',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.grey.shade900, Colors.black])),
                child: GridView.builder(
                    itemCount: MyUpdates.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      //  if (response.containsValue('Success'))
                      if (MyUpdates.contains('Chat') &&
                          MyUpdates.contains('SMS')) {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Container(
                                width: 60,
                                height: 60,
                                color: Colors.red,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              MyUpdates[index],
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        );
                      } else {
                        return CircularProgressIndicator();
                      }
                    })),
            Text(
              'School Updates',
              style: TextStyle(
                  fontSize: 19,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.grey.shade900, Colors.black])),
                child: GridView.builder(
                    itemCount: SchoolUpdates.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3),
                    itemBuilder: (context, index) {
                      //  if (response.containsValue('Success'))
                      if (SchoolUpdates.contains('Events') &&
                              SchoolUpdates.contains('News') &&
                              SchoolUpdates.contains('Birthday')
                          // SchoolUpdates.contains('Assignment') &&
                          // SchoolUpdates.contains('Homework')
                          ) {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Container(
                                width: 60,
                                height: 60,
                                color: Colors.orange,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              SchoolUpdates[index],
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        );
                      } else {
                        return CircularProgressIndicator();
                      }
                    })),
          ],
        ),
      ),
    );
  }
}
