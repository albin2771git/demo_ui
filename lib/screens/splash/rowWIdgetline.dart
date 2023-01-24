import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.end
      ,
      children: [
        // SizedBox(
        //   width: 20,
        // ),
        Container(
          width: 2,
          height: 200,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black,
                    Colors.lightBlue.shade700,

                  ])),
        ),
        // SizedBox(
        //   width: 40,
        // ),
        Container(
          width: 2,
          height: 300,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black,
                    Colors.lightBlue.shade700,

                  ])),
        ),
        // SizedBox(
        //   width: 40,
        // ),
        Container(
          width: 2,
          height: 400,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black,
                    Colors.lightBlue.shade700,

                  ])),
        ),
        // SizedBox(
        //   width: 40,
        // ),
        Container(
          width: 2,
          height: 500,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black,
                    Colors.lightBlue.shade700,

                  ])),
        ),
        // SizedBox(
        //   width: 40,
        // ),
        Container(
          width: 2,
          height: 400,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black,
                    Colors.lightBlue.shade700,

                  ])),
        ),
        // SizedBox(
        //   width: 40,
        // ),
        Container(
          width: 2,
          height: 300,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black,
                    Colors.lightBlue.shade700,

                  ])),
        ),
        Container(
          width: 2,
          height: 200,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black,
                    Colors.lightBlue.shade700,

                  ])),
        ),

      ],
    );
  }
}
