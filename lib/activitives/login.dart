import 'dart:core';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:valeria_app/activitives/home.dart';
import 'package:valeria_app/processes/prc_authenticate.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  var _usernameController = TextEditingController();
  var _passwordController = TextEditingController();

  Future<void> _login() async {
    User userCredential = await UserAuth.login(
      _usernameController.text,
      _passwordController.text,
    );
    print("Print log: ${_usernameController.text}");
    if(userCredential.uid != null){
      Navigator.push(
        context,
        CupertinoPageRoute(
          builder: (context) {
            return HomePage();
          },
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffFFF8EA),
        body: SafeArea(
          child: Center(
            child: ListView(
              padding: EdgeInsets.only(
                top: 20.0,
                left: 10.0,
                right: 10.0,
                bottom: 20,
              ),
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'lib/resource/logo.png',
                            width: 170,
                            height: 170,
                          )
                        ],
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 70),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                FlatButton(
                                    color: Color(0xffffffff),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    height: 40,
                                    onPressed: (){
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 30,right: 30),
                                      child: Text(
                                        'Log in',
                                        style: TextStyle(
                                            color: Color(0xff083654)
                                        ),
                                      ),
                                    )
                                ),
                                Text(
                                  'or',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    IconButton(
                                        iconSize: 40,
                                        icon: Icon(
                                          FontAwesomeIcons.facebookSquare,
                                          color: Color(0xff083654),
                                        ),
                                        onPressed: (){}
                                    ),
                                    IconButton(
                                        iconSize: 40,
                                        icon: Icon(
                                          FontAwesomeIcons.googlePlus,
                                          color: Color(0xff083654),
                                        ),
                                        onPressed: (){}
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10.0,
                                right: 20,
                                left: 20,
                              ),
                              child: TextField(
                                style: TextStyle(
                                    fontSize: 20
                                ),
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                      ),
                                      borderSide: BorderSide(color: Colors.white,width: 0)
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                      ),
                                      borderSide: BorderSide(color: Colors.white,width: 0)
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                    ),
                                  ),
                                  hintText: 'ID',
                                  contentPadding: EdgeInsets.only(
                                      left: 20,
                                      top: 5,
                                      right: 20,
                                      bottom: 5
                                  ),
                                ),
                                controller: _usernameController,
                                enableSuggestions: true,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                right: 20,
                                left: 20,
                              ),
                              child: Container(
                                color: Color(0XFF083654),
                                height: 2,
                                width: double.infinity,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                right: 20,
                                left: 20,
                              ),
                              child: TextField(
                                style: TextStyle(
                                    fontSize: 20
                                ),
                                decoration: InputDecoration(
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                      ),
                                      borderSide: BorderSide(color: Colors.white,width: 0)
                                  ),
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                      ),
                                      borderSide: BorderSide(color: Colors.white,width: 0)
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                      )
                                  ),
                                  hintText: 'Password',
                                  contentPadding: EdgeInsets.only(
                                      left: 20,
                                      top: 5,
                                      right: 20,
                                      bottom: 5
                                  ),
                                ),
                                controller: _passwordController,
                                obscureText: true,
                                autocorrect: false,
                                enableSuggestions: false,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 20),
                                  child: TextButton(
                                      style: ButtonStyle(
                                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(50.0),
                                              )
                                          ),
                                          backgroundColor: MaterialStateProperty.all(
                                            Colors.white,
                                          )
                                      ),
                                      onPressed: () {
                                        _login();
                                        _usernameController.text ='';
                                        _passwordController.text = '';
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 30, top: 5, right: 30, bottom: 5),
                                        child: Text(
                                          'Sign In',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xff083654)
                                          ),
                                        ),
                                      )
                                  ),
                                )
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 30),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  TextButton(
                                    onPressed: (){},
                                    child: Text(
                                        'Create an account',
                                        style: TextStyle(
                                          color: Color(0xff083654),
                                        )
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: (){},
                                    child: Text(
                                      'Need a help ?',
                                      style: TextStyle(
                                        color: Color(0xff083654),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                    )
                  ],
                )
              ],
            ),
          ),
        )
    );
  }
}


