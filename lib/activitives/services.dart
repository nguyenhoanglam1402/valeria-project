import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:valeria_app/activitives/blank_page.dart';
import 'package:valeria_app/activitives/home.dart';
import 'package:valeria_app/widgets/address_picker.dart';
import 'package:valeria_app/widgets/hospital_picker.dart';
import 'package:valeria_app/widgets/schedule_picker.dart';

class ServicesPage extends StatefulWidget {
  const ServicesPage({Key key}) : super(key: key);

  @override
  _ServicesPageState createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {

  var visible = false;

  Route _customRoute(Widget nextPage){
    return PageRouteBuilder(
      transitionsBuilder: (context, animation, secondaryAnimation, child){
        animation = CurvedAnimation(parent: animation, curve: Curves.linear);
        return ScaleTransition(
          child: FadeTransition(
            opacity: animation,
            child: nextPage,
          ),
          alignment: Alignment.bottomCenter,
          scale: animation,
        );
      },
      transitionDuration: Duration(milliseconds: 200),
      reverseTransitionDuration: Duration(milliseconds: 200),
      pageBuilder: (context, animation, secondaryAnimation) => nextPage,
    );
  }

  @override
  Widget build(BuildContext context) {
    bool visible = false;
    return Scaffold(
      backgroundColor: Color(0xffFFF8EA),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
                top: 100,
                right: 310,
                child: Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.rotationY(math.pi),
                  child: Image.asset(
                    'lib/resource/rounded_plus.png',
                    width: 120,
                    height: 120,
                  ),
                )
            ),
            Positioned(
                top: 130,
                left: 320,
                child: Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.rotationY(math.pi),
                  child: Image.asset(
                    'lib/resource/rounded_plus.png',
                    width: 130,
                    height: 130,
                  ),
                )
            ),
            Positioned(
                top: 290,
                child: Row(
                  children: [
                    Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.rotationY(0),
                      child: Image.asset(
                        'lib/resource/heart_beat.png',
                        width: 210,
                        height: 130,
                      ),
                    ),
                    Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.rotationY(math.pi),
                      child: Image.asset(
                        'lib/resource/heart_beat.png',
                        width: 210,
                        height: 130,
                      ),
                    )
                  ],
                )
            ),
            Positioned(
                top: 470,
                child: Row(
                  children: [
                    Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.rotationY(0),
                      child: Image.asset(
                        'lib/resource/heart_beat.png',
                        width: 210,
                        height: 130,
                      ),
                    ),
                    Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.rotationY(math.pi),
                      child: Image.asset(
                        'lib/resource/heart_beat.png',
                        width: 210,
                        height: 130,
                      ),
                    )
                  ],
                )
            ),
            ListView(
              children: [
                Container(
                  height: 700,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset(
                              'lib/resource/logo.png',
                              height: 140,
                              width: 140,
                            ),
                          )
                        ],
                      ),
                      ElevatedButton(
                        onPressed: (){
                          Navigator.push(
                              context,
                              _customRoute(
                                  BlankPage(
                                    child: new SchedulePicker(
                                      package: 0,
                                    ),
                                  ),
                              )
                          );
                        },
                        child: Text(
                          'BASIC INFORMATION',
                          style: TextStyle(
                              fontSize: 22
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xff083654),
                            minimumSize: Size(270, 120),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            )
                        ),
                      ),
                      ElevatedButton(
                        onPressed: (){
                          Navigator.push(
                              context,
                              _customRoute(
                                  BlankPage(
                                    child: SchedulePicker(
                                      package: 1,
                                    ),
                                  )
                              )
                          );
                        },
                        child: Text(
                          'BASIC CARE',
                          style: TextStyle(
                              fontSize: 22
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xff083654),
                            minimumSize: Size(270, 120),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            )
                        ),
                      ),
                      ElevatedButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            _customRoute(
                              BlankPage(
                                child: SchedulePicker(
                                  package: 2,
                                )
                              )
                            )
                          );
                        },
                        child: Text(
                          'BOOKING',
                          style: TextStyle(
                              fontSize: 22
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xff083654),
                            minimumSize: Size(270, 120),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            )
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: TextButton(
                onPressed: (){
                  Navigator.pop(context, HomePage());
                },
                child: Icon(
                  FontAwesomeIcons.home,
                  color: Color(0xff083654),
                  size: 40,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}

