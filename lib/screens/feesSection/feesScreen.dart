import 'package:flutter/material.dart';

class feesScreen extends StatefulWidget {
  const feesScreen({Key? key}) : super(key: key);

  @override
  State<feesScreen> createState() => _feesScreenState();
}

class _feesScreenState extends State<feesScreen> {
  @override
  Widget build(BuildContext context) {
    List years = [
      '2015-2016',
      '2016-2017',
      '2017-2018',
      '2018-2019',
      '2019-2020',
      '2020-2021',
      '2021-2022',
      '2022-2023',
    ];
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Fees",
          style: TextStyle(
              color: Colors.white, fontSize: 19, fontWeight: FontWeight.bold),
        ),

          ),

      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: Colors.black),
        child: ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.48,
              decoration: BoxDecoration(
                color: Colors.grey.shade900
              ),
              child: Center(child: Text('data',style: TextStyle(color: Colors.white),),),
            )
          ],
        ),
      ),
    );
  }
}
