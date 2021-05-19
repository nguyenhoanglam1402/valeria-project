import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF8EA),
      body: SafeArea(
        child: ListView(
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
            Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  child: Image.asset(
                    'lib/resource/rounded_plus.png',
                    height: 140,
                    width: 140,
                  ),
                  top:300,
                  right: 320,
                ),
                Positioned(
                  child: Image.asset(
                    'lib/resource/rounded_plus.png',
                    height: 140,
                    width: 140,
                  ),
                  top:130,
                  left: 300,
                ),
                Container(
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    height: 500,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                            onPressed: (){},
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
                            onPressed: (){},
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
                            onPressed: (){},
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
                            onPressed: (){},
                            child: Text(
                              'Contact',
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
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
