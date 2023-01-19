import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class classSection extends StatelessWidget {
  const classSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        'Class',
        style: TextStyle(color: Colors.white, fontSize: 23),
      )),
    );
  }
}
