import 'dart:core';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

class ConnectionController{
  static FirebaseApp _firebaseApp;

  ConnectionController();

  static Future<void> initConnection() async{
    _firebaseApp = await Firebase.initializeApp();
    print('Connected successfully !');
  }
}
