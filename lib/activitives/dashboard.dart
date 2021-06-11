import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:valeria_app/activitives/blank_page.dart';
import 'package:valeria_app/activitives/diagnose.dart';
import 'package:valeria_app/widgets/data_collection.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  var percent = 0.7;

  Route _customRoute(Widget nextPage){
    return CupertinoPageRoute(
      builder: (context) {
        return nextPage;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF8EA),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(top: 30),
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'lib/resource/logo.png',
                      height: 100,
                      width: 100,
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 20,
                    right: 10,
                    left: 10,
                    bottom: 20
                  ),
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(10,30,10,10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color(0xff083654),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffA6083654),
                        blurRadius: 3
                      )
                    ]
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'DASHBOARD',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(20),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    CircularPercentIndicator(
                                      radius: 270,
                                      percent: percent,
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      circularStrokeCap: CircularStrokeCap.round,
                                      animation: true,
                                      animationDuration: 3000,
                                      animateFromLastPercent: true,
                                      progressColor: Color(0xffFFA358),
                                      backgroundColor: Color(0xff4DF2F2F2),
                                    ),
                                    Column(
                                      children: [
                                        Icon(
                                          FontAwesomeIcons.solidHeart,
                                          color: Color(0xffFF809B),
                                          size: 40,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 20, bottom: 5),
                                          child: Text(
                                            '100',
                                            style: TextStyle(
                                                fontSize: 40,
                                                color: Colors.white
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(0),
                                          child: Text(
                                            'BPM',
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: Color(0x85e6e6e6),
                                            ),
                                          ),
                                        ),

                                      ],
                                    )
                                  ],
                                )
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 10, bottom: 10),
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Color(0xff002841),
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: Column(
                                  children: [
                                    Icon(
                                      FontAwesomeIcons.fire,
                                      color: Color(0xffFFA358),
                                      size: 30,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Text(
                                        '630',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 5),
                                      child: Text(
                                        'kCalo',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0x85e6e6e6),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10, bottom: 10),
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Color(0xff002841),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Column(
                                  children: [
                                    Icon(
                                      FontAwesomeIcons.bolt,
                                      color: Color(0xff29ABE2),
                                      size: 30,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Text(
                                        '832',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 5),
                                      child: Text(
                                        'kCalo',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0x85e6e6e6),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10, bottom: 10),
                                width: 110,
                                decoration: BoxDecoration(
                                    color: Color(0xff002841),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Column(
                                  children: [
                                    Icon(
                                      FontAwesomeIcons.mapMarkerAlt,
                                      color: Color(0xff009245),
                                      size: 30,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Text(
                                        '14',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 5),
                                      child: Text(
                                        'kCalo',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0x85e6e6e6),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: ElevatedButton(
                                  onPressed: (){
                                    Navigator.push(
                                      context,
                                      _customRoute(
                                        BlankPage(
                                          child: DataCollection(),
                                        )
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'Suggestion',
                                    style: TextStyle(
                                      fontSize: 19,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.only(
                                        top: 10,
                                        bottom: 10,
                                        left: 30,
                                        right: 30
                                    ),
                                    primary: Color(0xff083654),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                      side: BorderSide(
                                        width: 1,
                                        color: Colors.white
                                      )
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        )
      ),
    );
  }
}
