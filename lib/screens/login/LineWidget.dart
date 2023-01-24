import 'package:flutter/material.dart';

class LineWIdget extends StatelessWidget {
  const LineWIdget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Container(
          width: 2,
          height: 80,
          decoration: BoxDecoration(
             color: Colors.blue.shade700
        ),
        ),
        Container(
          width: 2,
          height: 120,
          decoration: BoxDecoration(
              color: Colors.blue.shade700
          ),
        ),
        Container(
          width: 2,
          height: 160,
          decoration: BoxDecoration(
              color: Colors.blue.shade700
          ),
        ),
        Container(
          width: 2,
          height: 110,
          decoration: BoxDecoration(
              color: Colors.blue.shade700
          ),
        ),
        Container(
          width: 2,
          height: 160,
          decoration: BoxDecoration(
              color: Colors.blue.shade700
          ),
        ),
        Container(
          width: 2,
          height: 120,
          decoration: BoxDecoration(
              color: Colors.blue.shade700
          ),
        ),
        Container(
          width: 2,
          height: 80,
          decoration: BoxDecoration(
              color: Colors.blue.shade700
          ),
        ),
      ],
    );
  }
}
