import 'dart:core';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:valeria_app/processes/medical_record.dart';

class ConnectionController{
  static FirebaseApp _firebaseApp;
  static DatabaseReference _userRoot;

  ConnectionController();

  static Future<void> initConnection() async{
    _firebaseApp = await Firebase.initializeApp();
    print('Connected successfully !');
  }

  static void setUserRoot(String rootName) {
    _userRoot = FirebaseDatabase.instance.reference().child(rootName);
    print(rootName);
  }

  static DatabaseReference getUserRoot(){
    return _userRoot;
  }

}
