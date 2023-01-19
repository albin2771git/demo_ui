import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TransportationScreen extends StatefulWidget {
  const TransportationScreen({Key? key}) : super(key: key);

  @override
  State<TransportationScreen> createState() => _TransportationScreenState();
}

class _TransportationScreenState extends State<TransportationScreen> {
  int SelectedIndex = 0;

  int selectedIndexColor=0;

  String SelectedBus='BUS 1';
  List SchoolBusCount = [
    'BUS 1',
    'BUS 2',
    'BUS 3',
    'BUS 4',
    'BUS 5',
    'BUS 6',
    'BUS 7',
    'BUS 8',
    'BUS 9'
  ];
  List BUS_1TripCount = ['Test Trip', 'Trip R1', 'Trip R11'];

  void _IndexSelect(int index) {
    setState(() {
      SelectedIndex = index;
      selectedIndexColor = index;
      SelectedBus=SchoolBusCount[index];
      print("Selected $SelectedBus");

      // isSelected=!isSelected;
    });
  }

// void _selectedIndexColor(){
//     setState(() {
//       isSelected=!isSelected;
//     });
// }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Transportation",
          style: TextStyle(
              color: Colors.white, fontSize: 19, fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.black,
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width * 0.50,
              decoration: BoxDecoration(color: Colors.black),
              child: Column(
                //scrollDirection: Axis.vertical,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "School Buses",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 21,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Select School Bus Number For More Details',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: ListView(children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          child: GridView.builder(
                              itemCount: SchoolBusCount.length,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 6,
                                      mainAxisSpacing: 10,
                                      crossAxisSpacing: 10),
                              itemBuilder: (BuildContext context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    _IndexSelect(index);

                                    // _selectedIndexColor();

                                    print(index);
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        // color: selectedIndexColor == index
                                        //     ? Colors.red.shade800
                                        //     : Colors.grey
                                        borderRadius: BorderRadius.circular(9),
                                        gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: selectedIndexColor == index
                                                ? [
                                                    Colors.black,
                                                    Colors.blue.shade700,
                                                    Colors.blue.shade900
                                                  ]
                                                : [
                                                    Colors.grey.shade900,
                                                    Colors.grey.shade900,
                                                    Colors.grey.shade900,
                                                  ])),
                                    child: Center(
                                      child: Text(
                                        SchoolBusCount[index],
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ]),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.black,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.grey.shade700,
                                  Colors.purple.shade900
                                ]),
                            borderRadius: BorderRadius.circular(9)),
                        child: Row(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height,
                              width: 120,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(9),
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Colors.blue.shade800,
                                        Colors.black
                                      ])),
                              child: Center(
                                child: Text(
                                  SelectedBus,
                                 //'data',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Container(
                              height: 30,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(9)),
                              child: Center(
                                child: Text(
                                  '3 trips',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              DefaultTabController(
                                length: 3,
                                child: Container(
                                  child: Column(
                                    children: [
                                      Container(
                                        // color: Colors.amber,
                                        child: TabBar(
                                          labelColor: Colors.white,
                                          unselectedLabelColor:
                                              Colors.grey.shade700,
                                          tabs: [
                                            Tab(
                                              text: 'Test Trip',
                                            ),
                                            Tab(
                                              text: 'Trip R1',
                                            ),
                                            Tab(
                                              text: 'Trip R11',
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 350,
                                          color: Colors.black,
                                          child: TabBarView(
                                            children: [
                                              TabViewScreen(
                                                  drivername: "AJAD MATHUR"),
                                              TabViewScreen(
                                                  drivername: "HARNAND SING"),
                                              TabViewScreen(
                                                  drivername: "HARNAND SING"),
                                            ],
                                          ))
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TabViewScreen extends StatelessWidget {
  String drivername;

  TabViewScreen({Key? key, required this.drivername}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Icon(
            FontAwesomeIcons.car,
            color: Colors.white,size: 24,
          ),
          title: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              Text(
                'Driver',
                style: TextStyle(color: Colors.grey.shade700),
              ),
              Text(
                drivername,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w700),
              ),

            ],
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.call),
                color: Colors.white,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.message),
                color: Colors.white,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.whatsapp),
                color: Colors.white,
              ),
            ],
          ),
        ),
        Divider(thickness: 2,color: Colors.grey.shade900,),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20,top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Pick Up Route',
                style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.arrow_downward,
                color: Colors.white,
              )
            ],
          ),
        ),
        ExpansionTile(
          leading: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.amber,
                image: DecorationImage(
                    image: AssetImage('assets/stepper.jpeg'),
                    fit: BoxFit.cover)),
          ),
          title: Text(
            'Street 1',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          children: [
            ListTile(
              leading: Container(width: 30,
                height: 30,),
              title: Text(
                'Student 1',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Container(width: 30,
                height: 30,),
              title: Text(
                'Student 2',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Container(width: 30,
                height: 30,),
              title: Text(
                'Student 3',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        ExpansionTile(
          leading: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.amber,
                image: DecorationImage(
                    image: AssetImage('assets/stepper.jpeg'),
                    fit: BoxFit.cover)),
          ),
          title: Text(
            'Street 2',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          children: [
            ListTile(
              leading: Container(width: 30,
              height: 30,),
              title: Text(
                'Student 4',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Container(width: 30,
                height: 30,),
              title: Text(
                'Student 5',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Container(width: 30,
                height: 30,),
              title: Text(
                'Student 6',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        ExpansionTile(
          leading: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.amber,
                image: DecorationImage(
                    image: AssetImage('assets/stepper.jpeg'),
                    fit: BoxFit.cover)),
          ),
          title: Text(
            'Street 3',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          children: [
            ListTile(
              leading: Container(width: 30,
                height: 30,),
              title: Text(
                'Student 7',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Container(width: 30,
                height: 30,),
              title: Text(
                'Student 8',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Container(width: 30,
                height: 30,),
              title: Text(
                'Student 9',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        ExpansionTile(
          leading: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.amber,
                image: DecorationImage(
                    image: AssetImage('assets/stepper.jpeg'),
                    fit: BoxFit.cover)),
          ),
          title: Text(
            'Street 4',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          children: [
            ListTile(
              leading: Container(width: 30,
                height: 30,),
              title: Text(
                'Student 10',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Container(width: 30,
                height: 30,),
              title: Text(
                'Student 11',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Container(width: 30,
                height: 30,),
              title: Text(
                'Student 12',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),

      ],
    );
  }
}
