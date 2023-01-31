import 'dart:async';
import 'dart:convert';

import 'package:demo_ui/screens/bulletin/bulletinDetailScreen.dart';
import 'package:demo_ui/screens/bulletin/createBulletin.dart';
import 'package:demo_ui/screens/classSection/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class BulletinFirstScreen extends StatefulWidget {
  const BulletinFirstScreen({super.key});

  @override
  State<BulletinFirstScreen> createState() => _BulletinFirstScreenState();
}

class _BulletinFirstScreenState extends State<BulletinFirstScreen> {
  var token;
  var responsedata;
  var responsedatafrom;

  @override
  void initState() {
    // TODO: implement initState

    getdetails();
    // getdetailbyGet();
    super.initState();
  }

  List img = [
    'https://images.pexels.com/photos/357271/pexels-photo-357271.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/5212345/pexels-photo-5212345.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/3401403/pexels-photo-3401403.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/1206101/pexels-photo-1206101.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/256395/pexels-photo-256395.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/3992949/pexels-photo-3992949.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/3042432/pexels-photo-3042432.jpeg?auto=compress&cs=tinysrgb&w=600'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xff131619),
          title: Text(
            'Bulletin',
            style: TextStyle(
                color: Colors.white, fontSize: 19, fontWeight: FontWeight.bold),
          )),
      body: responsedata == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView(
                shrinkWrap: true,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 326,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        image: DecorationImage(
                            image: NetworkImage(
                                responsedata['data'][0]['ImgURL'].isEmpty
                                    ? responsedata['data'][0]['DefaultImage']
                                    : responsedata['data'][0]['ImgURL'][0]),
                            fit: BoxFit.cover)),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 20,
                          top: 230,
                          child: Text(
                            'LATEST',
                            style: TextStyle(
                                color: Colors.grey.shade200, fontSize: 12),
                          ),
                        ),
                        Positioned(
                          top: 250,
                          left: 20,
                          child: Container(
                            width: 340,
                            height: 70,
                            color: Colors.transparent,
                            child: Text(
                              responsedata['data'][0]['Title'],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 146,
                    decoration: BoxDecoration(
                        color: Color(0xff131619),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        responsedata['data'][0]['Content'],
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                    )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: responsedata['data'].length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BulletinDetailScreen(
                                        name: responsedata['data'][index]
                                            ['StaffName'],
                                        dateandTime: responsedata['data'][index]
                                            ['CreatedDateTime'],
                                        title: responsedata['data'][index]
                                            ['Title'],
                                        content: responsedata['data'][index]
                                            ['Content'],
                                        imgurl: responsedata['data'][index]
                                            ['ImgURL'],
                                        defaultimgdata: responsedata['data']
                                            [index]['DefaultImage'],
                                      )));
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 120,
                          decoration: BoxDecoration(
                              color: Color(
                                0xff131619,
                              ),
                              borderRadius: BorderRadius.circular(10)),
                          child: Stack(children: [
                            Positioned(
                              top: 15,
                              left: 10,
                              child: Container(
                                width: 90,
                                height: 90,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: NetworkImage(responsedata['data']
                                                    [index]['ImgURL']
                                                .isEmpty
                                            ? responsedata['data'][index]
                                                ['DefaultImage']
                                            : responsedata['data'][index]
                                                ['ImgURL'][0]),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                            Positioned(
                              top: 15,
                              left: 130,
                              child: Text(
                                responsedata['data'][index]['StaffName'],
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                              ),
                            ),
                            Positioned(
                              top: 30,
                              left: 130,
                              child: Container(
                                width: 230,
                                height: 70,
                                color: Colors.transparent,
                                child: Text(
                                  responsedata['data'][index]['Content'],
                                  maxLines: 3,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                ),
                              ),
                            ),
                            Positioned(
                              right: 20,
                              bottom: 10,
                              child: Text(
                                responsedata['data'][index]['CreatedDateTime'],
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Positioned(
                              right: 5,
                              top: 15,
                              child: Icon(
                                Icons.keyboard_arrow_right_rounded,
                                color: Colors.grey,
                              ),
                            )
                          ]),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        height: 1,
                        color: Colors.grey.shade600,
                      );
                    },
                  )
                ],
              ),
            ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CreateBulletin()));
        },
        child: Icon(
          Icons.edit_outlined,
          color: Colors.blue,
        ),
      ),
    );
  }

  Future getdetails() async {
    Map data = {"username": "prayaga@eloit.com", "password": "Eloit@123!"};
    var body = jsonEncode(data);

    http.Response response = await http.post(
        Uri.parse('https://qa.edisapp.net/api/v2/principal/auth/login'),
        headers: {"Content-Type": "Application/json"},

        //---------
        body: body);

    //------------
    var fetchdata = jsonDecode(response.body);

    token = fetchdata['data']['token'];
    print(token);
    // print(fetchdata['data']['token']);

    // //------
    var temp = Uri.parse(
        "https://qa.edisapp.net/api/v2/principal/Announcements/GetAnnouncementsList?academicYearId=9&lastAnnouncementId=0&skipCount=0&takeCount=10");
    print("temp: $token");
    http.Response responsedatafrom = await http.get(
      Uri.parse(
          "https://qa.edisapp.net/api/v2/principal/Announcements/GetAnnouncementsList?academicYearId=9&lastAnnouncementId=0&skipCount=0&takeCount=10"),
      headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer $token"
      },
    );
    setState(() {
      responsedata = jsonDecode(responsedatafrom.body);
    });

    // print(responsedatafrom.body);
    // responsedata = responsedatafrom;
    print(responsedata['data'][0]['Id']);
    //---------------------
  }

// void getdetailbyGet() async {
//   var temp = Uri.parse(
//       "https://qa.edisapp.net/api/v2/principal/Announcements/GetAnnouncementsList?academicYearId=9&lastAnnouncementId=0&skipCount=0&takeCount=10");
//   print("temp: $token");
//   http.Response responsedatafrom = await http.get(
//     Uri.parse(
//         "https://qa.edisapp.net/api/v2/principal/Announcements/GetAnnouncementsList?academicYearId=9&lastAnnouncementId=0&skipCount=0&takeCount=10"),
//     headers: {
//       "Content-Type": "application/json",
//       "Authorization": "Bearer $token"
//     },
//   );
//   print('token is $token');

//   setState(() {
//     responsedata = jsonDecode(responsedatafrom.body);
//     print('token is $token');
//   });

//   // print(responsedatafrom.body);
//   // responsedata = responsedatafrom;
//   print(responsedata['data'][0]['Id']);
// }
}
