import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SchoolUpdates_grid extends StatelessWidget {
  const SchoolUpdates_grid({super.key});

  @override
  Widget build(BuildContext context) {
    List IconButtonList = [
      IconButton(onPressed: () {}, icon: Icon(Icons.note)),
      IconButton(onPressed: () {}, icon: Icon(Icons.home_max_sharp)),
      IconButton(onPressed: () {}, icon: Icon(Icons.build_circle_rounded)),
      IconButton(onPressed: () {}, icon: Icon(Icons.wallet)),
      IconButton(onPressed: () {}, icon: Icon(Icons.mail)),
      IconButton(onPressed: () {}, icon: Icon(Icons.label_important)),
      IconButton(onPressed: () {}, icon: Icon(Icons.ondemand_video_rounded))
    ];
    List ColorsList = [
      Colors.red.shade500,
      Colors.blue.shade500,
      Colors.green.shade500,
      Colors.amber.shade500,
      Colors.purple.shade500,
      Colors.red.shade500,
      Colors.yellow.shade500
    ];
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.grey.shade900, Colors.black])),
        child: GridView.builder(
          itemCount: IconButtonList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, mainAxisSpacing: 30, crossAxisSpacing: 30),
          itemBuilder: (context, index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: ColorsList[index]),
                    child: IconButtonList[index],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'data',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            );
          },
        ));
  }
}
