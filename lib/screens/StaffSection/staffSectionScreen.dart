import 'package:demo_ui/models/AllStaffDetails.dart';
import 'package:demo_ui/models/staffDetails.dart';
import 'package:demo_ui/screens/StaffSection/models/administration/AdminModelClass.dart';
import 'package:demo_ui/screens/StaffSection/models/administration/administration_apidata.dart';
import 'package:flutter/material.dart';

class StaffSectionScreen extends StatefulWidget {
  const StaffSectionScreen({Key? key}) : super(key: key);

  @override
  State<StaffSectionScreen> createState() => _StaffSectionScreenState();
}

class _StaffSectionScreenState extends State<StaffSectionScreen> {
  AllStaffDetails StaffDetailDataFetch = AllStaffDetails();
  AdminModelClass AdminDetailDataFetch = AdminModelClass();

  @override
  void initState() {
    // TODO: implement initState
    _StaffDetailsFetch();
    _AdminDetailsFetch();

    super.initState();
  }

  int selectedIndex = 0;

  // bool selectedIndexColor=false;

  @override
  Widget build(BuildContext context) {
    List catagory = [];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'Staff',
            style: TextStyle(
                color: Colors.white, fontSize: 19, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                color: Colors.black,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => TextButton(
                        onPressed: () {
                          setState(() {
                            selectedIndex = index;
                          });
                          print(selectedIndex);
                        },
                        child: Text(
                          StaffDetailDataFetch.data?[index].name ?? '',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        )),
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: 10,
                      );
                    },
                    itemCount: StaffDetailDataFetch.data!.length)),
            Expanded(
              child: _StaffList(),

              //_staffListSample(),
            )
          ],
        ));
  }

  void _StaffDetailsFetch() {
    StaffDetailDataFetch = AllStaffDetails.fromJson(StaffDetails);
    print(StaffDetailDataFetch.data?[0].name);
  }

  void _AdminDetailsFetch() {
    AdminDetailDataFetch = AdminModelClass.fromJson(AdministrationData);
    print(AdminDetailDataFetch.data?[0].staffList![0].staffName);
    print(AdminDetailDataFetch.data?[0].staffList!.length);
  }

  // void _TeachingDetailsFetch() {
  //   AdminDetailDataFetch = AdminModelClass.fromJson(AdministrationData);
  //   print(AdminDetailDataFetch.data?[0].staffList![0].staffName);
  //   print(AdminDetailDataFetch.data?[0].staffList!.length);
  // }

  _StaffList() {
    if (selectedIndex == 0) {
      return ListView.builder(
          itemCount: AdminDetailDataFetch.data?[0].staffList!.length,
          itemBuilder: (context, index) =>
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: FlutterLogo(),
                ),
                title: Text(
                  AdminDetailDataFetch.data?[0].staffList![index].staffName ??
                      '',
                  style: TextStyle(color: Colors.white),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.call,
                    color: Colors.white,
                  ),
                ),
              ));
    }
    if (selectedIndex == 1) {
      return Center(
        child: Text(
          'NO DATA',
          style: TextStyle(color: Colors.white),
        ),
      );
    }
    if (selectedIndex == 2) {
      return Center(
        child: Text(
          'NO DATA',
          style: TextStyle(color: Colors.white),
        ),
      );
    }
    if (selectedIndex == 3) {
      return Center(
        child: Text(
          'NO DATA',
          style: TextStyle(color: Colors.white),
        ),
      );
    }
  }
}
