import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF8EA),
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
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
                    top: 260,
                    child: Row(
                      children: [
                        Transform(
                          alignment: Alignment.center,
                          transform: Matrix4.rotationY(0),
                          child: Image.asset(
                            'lib/resource/heart_beat.png',
                            width: 200,
                            height: 130,
                          ),
                        ),
                        Transform(
                          alignment: Alignment.center,
                          transform: Matrix4.rotationY(math.pi),
                          child: Image.asset(
                            'lib/resource/heart_beat.png',
                            width: 200,
                            height: 130,
                          ),
                        )
                      ],
                    )
                ),
                Positioned(
                    top: 410,
                    child: Row(
                      children: [
                        Transform(
                          alignment: Alignment.center,
                          transform: Matrix4.rotationY(0),
                          child: Image.asset(
                            'lib/resource/heart_beat.png',
                            width: 200,
                            height: 130,
                          ),
                        ),
                        Transform(
                          alignment: Alignment.center,
                          transform: Matrix4.rotationY(math.pi),
                          child: Image.asset(
                            'lib/resource/heart_beat.png',
                            width: 200,
                            height: 130,
                          ),
                        )
                      ],
                    )
                ),
                Container(
                  height: 700,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                        onPressed: (){},
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
                        onPressed: (){},
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
                        onPressed: (){},
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: (){},
                            child: Icon(
                              FontAwesomeIcons.home,
                              color: Color(0xff083654),
                              size: 40,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            )

          ],
        ),
      ),
    );
  }
}
