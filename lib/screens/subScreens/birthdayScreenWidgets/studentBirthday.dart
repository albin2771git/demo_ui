import 'package:demo_ui/models/student/modeldata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../models/student/DataFetch.dart';

class StudentBirthday extends StatefulWidget {
  const StudentBirthday({super.key});

  @override
  State<StudentBirthday> createState() => _StudentBirthdayState();
}

class _StudentBirthdayState extends State<StudentBirthday> {
  DataFetch dataFetchList = DataFetch();

  int selectedIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    _Today();
    super.initState();
  }

  void selectedIndexValue(int index) {
    selectedIndex = index;
  }

  // List Birthdays = ['Today', 'Upcomming', 'This week', 'This Month'];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 15, top: 20, right: 15, bottom: 15),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: 120,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      borderRadius: BorderRadius.circular(9)),
                  child: Center(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          selectedIndexValue(0);
                          print(selectedIndex);
                        });
                      },
                      child: Text(
                        'Today',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 120,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      borderRadius: BorderRadius.circular(9)),
                  child: Center(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          selectedIndexValue(1);
                          print(selectedIndex);
                        });
                      },
                      child: Text(
                        'Upcomming',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 120,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      borderRadius: BorderRadius.circular(9)),
                  child: Center(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          selectedIndexValue(2);
                          print(selectedIndex);
                        });
                      },
                      child: Text(
                        'Week2',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 120,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      borderRadius: BorderRadius.circular(9)),
                  child: Center(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          selectedIndexValue(3);
                          print(selectedIndex);
                        });
                      },
                      child: Text(
                        'This month',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
            child: Container(
          child: _TodayBirthday(),
        ))
      ]),
    );
  }

  void _Today() {
    dataFetchList = DataFetch.fromJson(StudentBirthdayDate);
    print(dataFetchList.data?.today!);
  }

  _TodayBirthday() {
    if (selectedIndex == 0) {
      return ListView.builder(
          itemCount: dataFetchList.data?.today!.length,
          itemBuilder: (context, index) => ListTile(
              leading: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.white),
                child: FlutterLogo(),
              ),
              title: Padding(
                padding: const EdgeInsets.only(
                  left: 0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      dataFetchList.data?.today?[index].name ?? '',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      dataFetchList.data?.today?[index].className ?? '',
                      style:
                          TextStyle(color: Colors.grey.shade400, fontSize: 13),
                    ),
                    Text(
                      dataFetchList.data?.today?[index].dateOfBirth ?? '',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.call,
                      color: Colors.white,
                    ),
                    onPressed: (() {}),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.message,
                      color: Colors.white,
                    ),
                    onPressed: (() {}),
                  ),
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.whatsapp,color: Colors.white,)
                    ,onPressed: (() {}),
                  ),
                ],
              )));
    }
    if (selectedIndex == 1) {
      return ListView.builder(
          itemCount: dataFetchList.data?.upComing!.length,
          itemBuilder: (context, index) => ListTile(
              leading: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.white),
                child: FlutterLogo(),
              ),
              title: Padding(
                padding: const EdgeInsets.only(
                  left: 0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      dataFetchList.data?.upComing?[index].name ?? '',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      dataFetchList.data?.upComing?[index].className ?? '',
                      style:
                          TextStyle(color: Colors.grey.shade400, fontSize: 13),
                    ),
                    Text(
                      dataFetchList.data?.upComing?[index].dateOfBirth ?? '',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.call,
                      color: Colors.white,
                    ),
                    onPressed: (() {}),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.message,
                      color: Colors.white,
                    ),
                    onPressed: (() {}),
                  ),
                  IconButton(
                    icon:  FaIcon(FontAwesomeIcons.whatsapp,color: Colors.white,)
                    ,onPressed: (() {}),
                  ),
                ],
              )));
    }
    if (selectedIndex == 2) {
      return ListView.builder(
          itemCount: dataFetchList.data?.week!.length,
          itemBuilder: (context, index) => ListTile(
              leading: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.white),
                child: FlutterLogo(),
              ),
              title: Padding(
                padding: const EdgeInsets.only(
                  left: 0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      dataFetchList.data?.week?[index].name ?? '',
                      style: TextStyle(color: Colors.white),
                    ),
                    // Text(
                    //   dataFetchList.data?.week?[index].className ?? '',
                    //   style: TextStyle(color: Colors.white),
                    // ),
                    // Text(
                    //   dataFetchList.data?.week?[index].dateOfBirth ?? '',
                    //   style: TextStyle(color: Colors.white),
                    // ),
                  ],
                ),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.call,
                      color: Colors.white,
                    ),
                    onPressed: (() {}),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.message,
                      color: Colors.white,
                    ),
                    onPressed: (() {}),
                  ),
                  IconButton(
                    icon:  FaIcon(FontAwesomeIcons.whatsapp,color: Colors.white,)
                   , onPressed: (() {}),
                  ),
                ],
              )));
    }
    if (selectedIndex == 3) {
      return ListView.builder(
          itemCount: dataFetchList.data?.month!.length,
          itemBuilder: (context, index) => ListTile(
              leading: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.white),
                child: FlutterLogo(),
              ),
              title: Padding(
                padding: const EdgeInsets.only(
                  left: 0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      dataFetchList.data?.month?[index].name ?? '',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      dataFetchList.data?.month?[index].className ?? '',
                      style:
                          TextStyle(color: Colors.grey.shade400, fontSize: 13),
                    ),
                    Text(
                      dataFetchList.data?.month?[index].dateOfBirth ?? '',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.call,
                      color: Colors.white,
                    ),
                    onPressed: (() {}),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.message,
                      color: Colors.white,
                    ),
                    onPressed: (() {}),
                  ),
                  IconButton(
                    icon:  FaIcon(FontAwesomeIcons.whatsapp,color: Colors.white,),
                    onPressed: (() {}),
                  ),
                ],
              )));
    }
  }
}
