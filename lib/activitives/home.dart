import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:valeria_app/activitives/dashboard.dart';
import 'package:valeria_app/activitives/services.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  _notification(String content){
    Fluttertoast.showToast(
      msg: content,
      gravity: ToastGravity.BOTTOM,
      toastLength: Toast.LENGTH_SHORT,
      timeInSecForIosWeb: 1,
      textColor: Colors.white,
      backgroundColor: Color(0xff083654),
    );
  }

  Route _customRoute(Widget nextPage){
    return CupertinoPageRoute(
      builder: (context) => nextPage,
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF8EA),
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              child: Image.asset(
                'lib/resource/rounded_plus.png',
                height: 140,
                width: 140,
              ),
              top:370,
              right: 320,
            ),
            Positioned(
              child: Image.asset(
                'lib/resource/rounded_plus.png',
                height: 140,
                width: 140,
              ),
              top:200,
              left: 300,
            ),
            ListView(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 40, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'lib/resource/logo.png',
                        width: 140,
                        height: 140,
                      ),
                    ],
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    height: 500,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                            onPressed: (){
                              Navigator.push(context,_customRoute(ServicesPage()));
                            },
                            child: Text(
                              'Services',
                              style: TextStyle(
                                  fontSize: 20
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              minimumSize: Size(200, 50),
                              primary: Color(0xff083654),
                            )
                        ),
                        ElevatedButton(
                            onPressed: (){
                              _notification("This feature is being developed !");
                            },
                            child: Text(
                              'My booking',
                              style: TextStyle(
                                  fontSize: 20
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              minimumSize: Size(200, 50),
                              primary: Color(0xff083654),
                            )
                        ),
                        ElevatedButton(
                            onPressed: (){
                              Navigator.push(context, _customRoute(Dashboard()));
                            },
                            child: Text(
                              'Dashboard',
                              style: TextStyle(
                                  fontSize: 20
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              minimumSize: Size(200, 50),
                              primary: Color(0xff083654),
                            )
                        ),
                        ElevatedButton(
                            onPressed: (){},
                            child: Text(
                              'Profile',
                              style: TextStyle(
                                  fontSize: 20
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              minimumSize: Size(200, 50),
                              primary: Color(0xff083654),
                            )
                        ),
                        ElevatedButton(
                            onPressed: (){

                            },
                            child: Text(
                              'Family Caring',
                              style: TextStyle(
                                  fontSize: 20
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              minimumSize: Size(200, 50),
                              primary: Color(0xff083654),
                            )
                        ),
                      ],
                    )
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Developer: Nguyen Hoang Lam (Lam Emilie)\n'
                      'Valeria Team Product 2021',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    height: 1.5,
                    fontSize: 13,
                    color: Color(0xFF5f6368),
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
