import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:valeria_app/widgets/chart.dart';
import 'package:valeria_app/widgets/index.dart';
import 'package:fl_chart/fl_chart.dart';

class DiagnosePage extends StatefulWidget {
  const DiagnosePage({Key key}) : super(key: key);

  @override
  _DiagnosePageState createState() => _DiagnosePageState();
}

class _DiagnosePageState extends State<DiagnosePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF8EA),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(top: 30),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'lib/resource/logo.png',
                  width: 100,
                  height: 100,
                ),
                Wrap(
                  children: [
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.fromLTRB(10,30,10,10),
                      padding: EdgeInsets.all(15),
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
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(
                                      left: 40,
                                      right: 40,
                                      top: 10,
                                      bottom: 10
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(
                                        color: Color(0xffF2F2F2),
                                        width: 2
                                    ),
                                  ),
                                  child: Text(
                                    'SUGGESTION CHART',
                                    style: TextStyle(
                                        color: Color(0xffF2F2F2),
                                        fontSize: 22
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          ChartWidget(
                            dataPoint: [
                              FlSpot(0, 2),
                              FlSpot(1, 4),
                              FlSpot(2, 3),
                              FlSpot(3, 5),
                              FlSpot(4, 2),
                              FlSpot(5, 4),
                              FlSpot(6, 1)
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'DIAGNOSE STATISTIC',
                                  style: TextStyle(
                                      color: Color(0xffF2F2F2)
                                  ),
                                )
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircularPercentIndicator(
                                radius: 100,
                                lineWidth: 4,
                                center: IndexBlock(
                                  value: 0,
                                  topWidget: Text(
                                    'Cardiac',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Color(0xffFFA889)
                                    ),
                                  ),
                                  bottomWidget: Text(
                                    'Arrhythmia',
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: Color(0xffFFA889)
                                    ),
                                  ),
                                ),
                                progressColor: Color(0xffED1C24),
                                backgroundColor: Color(0xff8a9fae),
                                percent: 0.6,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    FontAwesomeIcons.solidCheckCircle,
                                    color: Color(0xff8a9fae),
                                  ),
                                ],
                              ),
                              CircularPercentIndicator(
                                radius: 100,
                                lineWidth: 4,
                                progressColor: Color(0xff8CC63F),
                                backgroundColor: Color(0xff8a9fae),
                                percent: 0.35,
                                center: IndexBlock(
                                  value: 35,
                                  topWidget: Icon(
                                    FontAwesomeIcons.solidHeart,
                                    color: Color(0xffFF809B),
                                    size: 14,
                                  ),
                                  bottomWidget: Text(
                                    'HEALTH',
                                    style: TextStyle(
                                      color: Color(0xff8a9fae),
                                      fontSize: 11,
                                    ),
                                  ),
                                ),

                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              'Based on early diagnosis we can see that you have a 65% '
                                  'chance of having an arrhythmia. Hurry up and book your '
                                  'appointment as soon as possible.',
                              style: TextStyle(
                                color: Color(0xff8a9fae),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: (){},
                                child: Text(
                                  'BOOKING',
                                  style: TextStyle(
                                    color: Color(0xffF2F2F2),
                                    fontSize: 18,
                                    letterSpacing: 1.5
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  minimumSize: Size(150, 40),
                                  primary: Color(0xff083654),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                    side: BorderSide(
                                      color: Color(0xffF2F2F2),
                                      width: 2,
                                    ),
                                  )
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      )
    );
  }
}
