import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StaffBirthday extends StatefulWidget {
  const StaffBirthday({super.key});

  @override
  State<StaffBirthday> createState() => _StaffBirthdayState();
}

class _StaffBirthdayState extends State<StaffBirthday> {
  int selectedIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

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
                      onPressed: () {},
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
                      onPressed: () {},
                      child: Text(
                        'Tomorrow',
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
                      onPressed: () {},
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
                      onPressed: () {},
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
                child: ListView.builder(
                    itemCount: 15,
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
                                'Name',
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "Phone Number",
                                style: TextStyle(
                                    color: Colors.grey.shade400, fontSize: 13),
                              ),
                              Text(
                                'Birthday Date',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
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
                              icon: FaIcon(FontAwesomeIcons.whatsapp,color: Colors.white,),


                              onPressed: (() {}),
                            ),
                          ],
                        )))))
      ]),
    );
  }
}
