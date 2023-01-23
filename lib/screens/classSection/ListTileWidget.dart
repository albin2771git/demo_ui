import 'package:demo_ui/screens/classSection/data.dart';
import 'package:flutter/material.dart';

class AttendanceListTile extends StatefulWidget {
  const AttendanceListTile({
    Key? key,
  }) : super(key: key);

  @override
  State<AttendanceListTile> createState() => _AttendanceListTileState();
}

class _AttendanceListTileState extends State<AttendanceListTile> {
  var currentValue = 0;
  bool isEnabled = true;
  TextEditingController enteredtext = TextEditingController();

  Color color = Colors.green;

  void setData(int value) {
    if (value == 0) {
      color = Colors.green;
      enteredtext.text =
          data.firstWhere((element) => element['id'] == value)['type'];
      isEnabled = true;
    } else if (value == 1) {
      color = Colors.red;
      enteredtext.text =
          data.firstWhere((element) => element['id'] == value)['type'];
      isEnabled = false;
    } else {
      color = Colors.yellow;
      enteredtext.text =
          data.firstWhere((element) => element['id'] == value)['type'];
      isEnabled = false;
    }
  }

  @override
  void initState() {
    super.initState();
    enteredtext.text = '';
    currentValue = 0;
    //setData(0);
  }

  List<DropdownMenuItem> datalist = data
      .map((e) => DropdownMenuItem(
            value: e['id'],
            child: Text(e['type']),
          ))
      .toList();

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        //
        borderRadius: BorderRadius.circular(5),
        child: Container(
          decoration: const BoxDecoration(
            border: Border(left: BorderSide(width: 7, color: Colors.green)),
          ),
          child: ListTile(
              contentPadding: const EdgeInsets.only(left: 15, right: 2),
              title: Text('Student Name'),
              subtitle: Text('Register no'),
              trailing: SizedBox(
                width: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Flexible(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey.shade400,
                            ),
                            borderRadius: BorderRadius.circular(6)),
                        child: TextField(
                          maxLines: 1,
                          minLines: 1,
                          enabled: isEnabled,
                          controller: enteredtext,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          cursorColor: Colors.grey,
                          decoration: InputDecoration(
                            //border: OutlineInputBorder(),
                            disabledBorder: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide: BorderSide(width: 8, color: color)),

                            enabledBorder: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide: BorderSide(width: 8, color: color)),
                            focusedBorder: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide: BorderSide(width: 8, color: color)),

                            contentPadding: const EdgeInsets.all(0.0),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade400),
                            borderRadius: BorderRadius.circular(6)),
                        child: InputDecorator(
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide: BorderSide(width: 8, color: color)),
                            focusedBorder: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide: BorderSide(width: 8, color: color)),
                            contentPadding: const EdgeInsets.all(0.0),
                          ),
                          child: DropdownButton(
                            //style: const TextStyle(fontSize: 0),
                            dropdownColor: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            underline: Container(
                              height: 0,
                            ),
                            //value: currentValue,
                            iconSize: 18,
                            icon: const Padding(
                              padding: EdgeInsets.only(right: 7),
                              child: Icon(Icons.keyboard_arrow_down),
                            ),

                            isExpanded: true,

                            items: datalist,

                            onChanged: (value) {
                              setState(() {
                                currentValue = value;
                                setData(value);
                                //print(currentValue);
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
        ));
  }
}
