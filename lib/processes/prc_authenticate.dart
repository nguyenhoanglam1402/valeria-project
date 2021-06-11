import 'dart:developer' as developer;
import 'dart:core';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class UserAuth {
  static final FirebaseAuth auth = FirebaseAuth.instance;

  UserAuth();

  static Future<User> login(String email, String password) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
          email: email,
          password: password
      );
      final user = userCredential.user;
      return user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
        Fluttertoast.showToast(
          msg: 'Account does not exist yet',
          fontSize: 17,
          textColor: Colors.white,
          backgroundColor: Color(0xff083654)
        );
        return Future.error(e.message);
      }
      else if (e.code == 'wrong-password') {
        Fluttertoast.showToast(
            msg: 'Password is not correct',
            fontSize: 17,
            textColor: Colors.white,
            backgroundColor: Color(0xff083654)
        );
        print('Wrong password provided for that user.');
      }
    }
    return Future.value();
  }
}