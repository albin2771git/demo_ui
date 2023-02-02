import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';

class BulletinDetailScreen extends StatefulWidget {
final String name;
final String dateandTime;
final String title;
final String content;
final List<dynamic>? imgurl;
final String defaultimgdata;

     BulletinDetailScreen({super.key,required this.name, required this.dateandTime, required this.title, required this.content,
       //required this.imgurl,
       required this.defaultimgdata,  this.imgurl});


  @override
  State<BulletinDetailScreen> createState() => _BulletinDetailScreenState();
}

class _BulletinDetailScreenState extends State<BulletinDetailScreen> {
  GlobalKey _sliderKey = GlobalKey();


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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                height: 352,
                decoration: BoxDecoration(
                    color: Color(0xff131619),
                    borderRadius: BorderRadius.circular(10)),
                child: CarouselSlider.builder(
                    key: _sliderKey,
                    slideBuilder: (index) {
                      return Container(
                        alignment: Alignment.topCenter,
                        child: Image.network(
                          widget.imgurl!.isEmpty? widget.defaultimgdata : widget.imgurl?[index],
                         // widget.defaultimgdata,
                          fit: BoxFit.cover,
                          height: 320,
                        ),

                      );

                    },
                    slideIndicator: CircularSlideIndicator(
                        currentIndicatorColor: Colors.grey,
                        indicatorBackgroundColor: Colors.grey.shade800,
                        padding: EdgeInsets.only(bottom: 10)),
                    itemCount: widget.imgurl!.isEmpty?1:widget.imgurl!.length)),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              color: Color(0xff131619),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'LATEST',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          widget.name,
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    widget.dateandTime,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.title,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.content,style: TextStyle(color: Colors.white, fontSize: 13),
                  maxLines: 9,)
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ListTile(
              tileColor: Color(0xff131619),
              leading: CircleAvatar(
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.play_arrow_outlined,
                  color: Colors.blue,
                ),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    child: Text(
                      '1X',
                      style: TextStyle(color: Colors.blue),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ListTile(
              tileColor: Color(0xff131619),
              title: Text(
                'DOWNLOAD',
                style: TextStyle(color: Colors.grey, fontSize: 13),
              ),
              subtitle: Text(
                '4 Attachment',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              trailing: CircleAvatar(
                backgroundColor: Colors.grey.shade900,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.sim_card_download_sharp,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
