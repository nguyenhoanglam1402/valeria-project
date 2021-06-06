import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:intl/intl.dart';
import 'package:valeria_app/activitives/blank_page.dart';
import 'package:valeria_app/widgets/consultant_form.dart';

class SchedulePicker extends StatefulWidget {
  const SchedulePicker({Key key, int package}) : super(key: key);

  final int package = 0;

  @override
  _SchedulePickerState createState() => _SchedulePickerState();
}

class _SchedulePickerState extends State<SchedulePicker> {
  TimeOfDay _time = TimeOfDay.now();
  TimeOfDay _timePicker;
  DateTime _dateTime = DateTime.now();
  DateTime _datePicker;

  TextEditingController timeEditingControl =  TextEditingController();
  TextEditingController dateEditingControl =  TextEditingController();

  Future<Null> pickTime(BuildContext context) async {
    _timePicker = await showTimePicker(
        context: context,
        initialTime: _time
    );

    setState(() {
      if(_timePicker !=null){
        _time = _timePicker;
        timeEditingControl.text = _time.format(context);
      }
    });
  }

  Future<Null> pickDate(BuildContext context) async {
    _datePicker = await showDatePicker(
      context: context,
      initialDate: _dateTime,
      firstDate: DateTime(2021),
      lastDate: DateTime(2025)
    );

    setState(() {
      if(_datePicker != null){
        _dateTime = _datePicker;
        dateEditingControl.text = DateFormat('E, MMM dd, yyyy').format(_dateTime);
      }
    });
  }

  Route _customRoute(Widget nextPage){
    return CupertinoPageRoute(
      builder:(context) => nextPage,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
          padding: EdgeInsets.all(15),
          width: double.infinity,
          height: 480,
          decoration: new BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xff083654),
              boxShadow: [
                BoxShadow(
                    color: Color(0xff083654),
                    blurRadius: 2
                )
              ]
          ),
          child: Stack(
            children: [
              Positioned(
                left: 260,
                child: Image.asset(
                  'lib/resource/rounded_plus.png',
                  height: 80,
                  width: 80,
                ),
              ),
              Positioned(
                  top: 110,
                  left: 130,
                  child: Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.rotationY(math.pi),
                    child: Image.asset(
                      'lib/resource/heart_beat.png',
                      width: 200,
                      height: 150,
                    ),
                  )
              ),
              Positioned(
                bottom: 30,
                left: 0,
                child: Image.asset(
                  'lib/resource/rounded_plus.png',
                  height: 100,
                  width: 100,
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 40.0,
                        left: 10,
                        bottom: 20
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Time:',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: TextField(
                      textAlign: TextAlign.center,
                      readOnly: true,
                      decoration: InputDecoration(
                          hintText: 'Example: 7:10 AM',
                          hintStyle: TextStyle(
                            color: Color(0xff8a9fae),
                          ),
                          contentPadding: EdgeInsets.only(
                              top: 5,
                              bottom: 5,
                              right: 15,
                              left: 15
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: BorderSide(
                                  color: Color(0xffF2F2F2),
                                  width: 2
                              )
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: BorderSide(
                                width: 2,
                                color: Color(0xFFF2F2F2),
                              )
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: BorderSide(
                                  width: 2,
                                  color: Color(0xffF2F2F2)
                              )
                          ),
                      ),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        letterSpacing: 1.5,
                      ),
                      onTap: () async {
                        pickTime(context);
                      },
                      controller: timeEditingControl,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        top: 80.0,
                        left: 10,
                        bottom: 20
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Date:',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: TextField(
                      readOnly: true,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        wordSpacing: 1.5,
                        color: Colors.white
                      ),
                      onTap: () async{
                        pickDate(context);
                      },
                      controller: dateEditingControl,
                      decoration: InputDecoration(
                          hintText: 'Example: Wed 23th, 2021',
                          hintStyle: TextStyle(
                            color: Color(0xff8a9fae),
                          ),
                          contentPadding: EdgeInsets.only(
                              top: 5,
                              bottom: 5,
                              right: 15,
                              left: 15
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: BorderSide(
                                  color: Color(0xffF2F2F2),
                                  width: 2
                              )
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: BorderSide(
                                width: 2,
                                color: Color(0xFFF2F2F2),
                              )
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: BorderSide(
                                  width: 2,
                                  color: Color(0xffF2F2F2)
                              )
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 80,
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xFF083654),
                          minimumSize: Size(140, 40),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                              side: BorderSide(
                                  color: Color(0xFFF2F2F2),
                                  width: 2
                              )
                          )
                      ),
                      onPressed: (){
                        switch(widget.package){
                          case 0:
                            Navigator.push(context, _customRoute(
                              BlankPage(
                                child: ConsultantForm(),
                              )
                            ));
                            break;
                          case 1:
                            Navigator.push(context, _customRoute(
                                BlankPage(
                                  child: ConsultantForm(),
                                )
                            ));
                            break;
                        }
                      },
                      child: Text(
                        'Submit',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          )
      ),
    );
  }
}
