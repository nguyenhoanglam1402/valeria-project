import 'dart:developer';
import 'dart:core';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

class DataController {
  DataController();
  static final DatabaseReference _databaseReference = FirebaseDatabase.instance.reference();

  static DatabaseReference getUserDataRoot({User user}){
    return _databaseReference.child("UserData").child(user.uid);
  }

  static DatabaseReference getHealthTrackingRoot({User user}) {
    return _databaseReference.child("UserHealthTracking").child(user.uid);
  }

  static DatabaseReference getDailyTrackingRoot() {
    return _databaseReference.child("DailyTracking");
  }

  static DatabaseReference getCollaboratorRoot({User user}) {
    return _databaseReference.child("Collaborators").child(user.uid);
  }

  static DatabaseReference getHistoryRoot({User user}) {
    return _databaseReference.child("Activities").child(user.uid);
  }

}