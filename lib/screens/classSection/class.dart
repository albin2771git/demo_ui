import 'package:demo_ui/screens/classSection/ListTileWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'data.dart';

class ClassScreen extends StatefulWidget {
  const ClassScreen({super.key});

  @override
  State<ClassScreen> createState() => _ClassScreenState();
}

class _ClassScreenState extends State<ClassScreen> {
  int tabselect = 0;

  List<DropdownMenuItem> datalist = data
      .map((e) => DropdownMenuItem(
            value: e['id'],
            child: Text(e['type']),
          ))
      .toList();

  void _tabselect(int tabindex) {
    setState(() {
      tabselect = tabindex;
    });
  }

  List colorlist = [
    Colors.green,
    Colors.green,
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.green,
    Colors.green,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Class 5 A | Term 1',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Written | English',
                style: TextStyle(color: Colors.grey.shade600, fontSize: 14),
              )
            ],
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                color: Colors.black,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    itemBuilder: (context, index) => Column(
                          //  mainAxisSize: MainAxisSize.min,
                          children: [
                            GestureDetector(
                              onTap: () {
                                _tabselect(index);
                              },
                              child: Container(
                                width: 120,
                                height: 45,
                                color: Colors.black,
                                child: Center(
                                  child: Text(
                                    'data',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 120,
                              height: 5,
                              color: tabselect == index
                                  ? Colors.blue
                                  : Colors.black,
                            )
                          ],
                        )),
              ),
              Expanded(
                  child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        border: Border.all(
                            color: Colors.grey.shade400,
                            width: 2,
                            strokeAlign: BorderSide.strokeAlignOutside)),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 90,
                            color: Colors.white,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(children: [
                                  Text(''),
                                  Text(
                                    'Student Name',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Roll No | Admin.No',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                  )
                                ]),
                                Column(
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Text('Save'),
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.red),
                                    ),
                                    Text('Obt.Mark')
                                  ],
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: ListView.separated(
                              scrollDirection: Axis.vertical,
                              itemCount: 9,
                              shrinkWrap: true,
                              itemBuilder: (context, index) =>
                                  AttendanceListTile(),
                              separatorBuilder:
                                  (BuildContext context, int index) {
                                return Divider(
                                  thickness: 2,
                                  color: Colors.grey.shade300,
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ))
            ],
          ),
        ));
  }
}
