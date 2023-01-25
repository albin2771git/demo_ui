import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'models/TransportationDatafetch.dart';
import 'models/transportationData.dart';

class TransportationScreen extends StatefulWidget {
  const TransportationScreen({Key? key}) : super(key: key);

  @override
  State<TransportationScreen> createState() => _TransportationScreenState();
}

class _TransportationScreenState extends State<TransportationScreen> {
  TransportationDatafetch TransportationDatafetchList =
      TransportationDatafetch();
  num? vehicileIdIndex;


  // void dispose() {
  //   _tabController.dispose();
  // }

  int SelectedIndex = 0;

  int selectedIndexColor = 0;

  //---------ListTile index select
  int ListTileIndex = 0;
  int ListTileSelectedIndexColor = 0;
  int driverSelect = 0;

  String SelectedBus = 'BUS 1';
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
  List BusTripFromApi = [];

  //----------
  var Details = new Map();

  //num i=0;
  void _ListTileSelectIndex(int index) {
    setState(() {
      ListTileIndex =index;
      ListTileSelectedIndexColor = index;

      //driverSelect=index;
    });
  }

  //----------------

//----------------
  void _IndexSelect(int index) {
    setState(() {
      SelectedIndex = index;
      selectedIndexColor = index;
      SelectedBus = TransportationDatafetchList
              .data?.transportationVehcileList![index].vehcileName ??
          '';
      print("Selected $SelectedBus");

      //----------fetching vehicle id
      vehicileIdIndex = TransportationDatafetchList
          .data?.transportationVehcileList![index].vehcileId;
      print('selected vehicileid is $vehicileIdIndex');
      BusTripFromApi.clear();

      // print("selected vehicle id from api2 ${TransportationDatafetchList.data?.transportationTripDetails![index].vehicleId}");
      TransportationDatafetchList.data?.transportationTripDetails!
          .forEach((element) {
        print(element.vehicleId);
        //  BusTripFromApi.add(element.vehicleId);

        //------------------
        //   BusTripFromApi.clear();
        if (element.vehicleId == vehicileIdIndex) {
          print(TransportationDatafetchList
              .data?.transportationTripDetails![index].vehicleId);
          BusTripFromApi.add(element);
        }
      });
      print("lenth${BusTripFromApi.length.toString()}");
      print("driver${BusTripFromApi[0]}")
      ;

      //  for( i;i<=TransportationDatafetchList.data?.transportationTripDetails!.length;i++)
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    _transportdatafetchfunction();
    _ListTileSelectIndex(0);
    super.initState();
  }


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
                              itemCount: TransportationDatafetchList
                                  .data?.transportationVehcileList!.length,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 6,
                                      mainAxisSpacing: 10,
                                      crossAxisSpacing: 10),
                              itemBuilder: (BuildContext context, gridindex) {
                                return GestureDetector(
                                  onTap: () {
                                    _IndexSelect(gridindex);
                                    // _selectedIndexColor();
                                    // vehicileIdIndex=TransportationDatafetchList.data?.transportationVehcileList![index].vehcileId;
                                    // print('selected $vehicileIdIndex');
                                    print(gridindex);
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
                                            colors: selectedIndexColor == gridindex
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
                                        //  SchoolBusCount[index],
                                        TransportationDatafetchList
                                                .data
                                                ?.transportationVehcileList![
                                                    gridindex]
                                                .vehcileName ??
                                            '',
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
                                  "${BusTripFromApi.length.toString()} Trips",
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
                              Container(
                                color: Colors.black,
                                width: MediaQuery.of(context).size.width,
                                height: 60,
                                child:  ListView.builder(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: BusTripFromApi.length,
                                  itemBuilder: (context, index) =>
                                      Column(
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              _ListTileSelectIndex(index);
                                              print(
                                                  "vehicle id is ${BusTripFromApi[0].vehicleId}");
                                            },
                                            child: Container(
                                              height: 55,
                                              width: 90,
                                              color: Colors.black,
                                              child: Center(
                                                child: Text(
                                                  BusTripFromApi[index].tripName,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 90,
                                            height: 5,
                                            color: ListTileIndex == index
                                                ? Colors.blue
                                                : Colors.black,
                                          )
                                        ],
                                      ),
                                ),
                              ),
                              Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 348,
                                  decoration:
                                      BoxDecoration(color: Colors.black),
                                  child: ListTile(
                                    leading: Icon(
                                      FontAwesomeIcons.car,
                                      color: Colors.white,
                                    ),
                                    title: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'DRIVER',
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 13),
                                        ),
                                        Text(
                                          'data',
                                          // BusTripFromApi[0].vehicleId ==
                                          //             vehicileIdIndex &&
                                          //         BusTripFromApi[1].vehicleId ==
                                          //             vehicileIdIndex
                                          //     ? BusTripFromApi[0].drivername
                                          //     : 'no data',
                                        //  BusTripFromApi[0].vehicleId,
                                         // BusTripFromApi[0].drivername,
                                          style: TextStyle(color: Colors.white),
                                        )
                                      ],
                                    ),
                                  ))
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


  void _transportdatafetchfunction() {
    TransportationDatafetchList =
        TransportationDatafetch.fromJson(TransportationData);
    print(TransportationDatafetchList.data?.transportationVehcileList!);
  }
}
