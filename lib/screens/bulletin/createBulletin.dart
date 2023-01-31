import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CreateBulletin extends StatefulWidget {
  const CreateBulletin({super.key});

  @override
  State<CreateBulletin> createState() => _CreateBulletinState();
}

class _CreateBulletinState extends State<CreateBulletin> {
  bool playaudio = false;
  var formkey = GlobalKey<FormState>();
  var file;
  bool expanOpen = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.grey.shade900,
          title: Text(
            'Create bulletin',
            style: TextStyle(
                color: Colors.white, fontSize: 17, fontWeight: FontWeight.w600),
          )),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          shrinkWrap: true,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListTile(
                      tileColor: Colors.grey.shade900,
                      leading: Icon(
                        Icons.note_alt_outlined,
                        color: Colors.white,
                      ),
                      title: Text(
                        'SELECT CLASS',
                        style: TextStyle(
                            color: Colors.grey.shade600, fontSize: 14),
                      ),
                      subtitle: Text(
                        'No Class Selected',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.grey.shade700,
                        size: 16,
                      ),
                      onTap: () {},
                    ),
                  ),
                  Container(
                    width: 320,
                    height: 1,
                    color: Colors.grey.shade700,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListTile(
                      tileColor: Colors.grey.shade900,
                      leading: Icon(
                        Icons.note_alt_outlined,
                        color: Colors.white,
                      ),
                      title: Text(
                        'SELECT STAFF',
                        style: TextStyle(
                            color: Colors.grey.shade600, fontSize: 14),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.grey.shade700,
                        size: 16,
                      ),
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 280,
              decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Form(
                  key: formkey,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        maxLines: 2,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Type Subject',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                        validator: (subject) {
                          if (subject!.isEmpty) {
                            return 'enter somthing';
                          } else {
                            return null;
                          }
                        },
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 1,
                        color: Colors.grey.shade600,
                      ),
                      TextFormField(
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.grey),
                            hintText: 'Create Bulletin'),
                        validator: (bulletin) {
                          if (bulletin!.isEmpty) {
                            return 'enter somthing ';
                          } else {
                            return null;
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 70,
              decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Record Bulletin    00:00',
                      style: TextStyle(color: Colors.grey.shade500),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: CircleAvatar(
                      backgroundColor: Colors.black,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.mic_none,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade900),
              child: Center(
                child: ExpansionTile(
                  title: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      'Upload Attachments',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  subtitle: Text(
                    'only .pdf,.jpg and png files.500kb\nmax file size.',
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                  trailing: GestureDetector(
                    onTap: () {
                      print('add file');
                    },
                    child: GestureDetector(
                      onTap: () async {
                        var file1 = await FilePicker.platform.pickFiles(
                            type: FileType.custom,
                            allowedExtensions: ['pdf', 'jpg', 'png']);
                        setState(() {
                          file = file1!.names[0].toString();
                          expanOpen = true;
                        });
                      },
                      child: Container(
                        width: 110,
                        height: 40,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue),
                            borderRadius: BorderRadius.circular(3)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Add file',
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 14),
                            ),
                            Icon(
                              Icons.link,
                              color: Colors.blue,
                              size: 22,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  children: [
                    expanOpen == true
                        ? ListTile(
                            title: Text(
                              file.toString() == ''
                                  ? 'file name'
                                  : file.toString(),
                              style: TextStyle(color: Colors.white),
                            ),
                            trailing: IconButton(
                              icon: Icon(
                                Icons.clear,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                setState(() {
                                  expanOpen = false;
                                });
                              },
                            ),
                          )
                        : Divider()
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 120,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Cancel',
                          style: TextStyle(
                              color: Colors.grey.shade500,
                              fontWeight: FontWeight.bold),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      height: 40,
                      child: ElevatedButton(
                          onPressed: () {
                            final valid = formkey.currentState!.validate();
                            if (valid) {
                              // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
                            }
                          },
                          child: Text(
                            'Submit',
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black)),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
