import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'dart:developer';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:valeria_app/activitives/blank_page.dart';
import 'package:valeria_app/activitives/home.dart';
import 'package:valeria_app/activitives/login.dart';
import 'package:valeria_app/processes/prc_connection.dart';
import 'package:valeria_app/widgets/consultant_form.dart';
import 'package:valeria_app/widgets/data_collection.dart';

Future<void> main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  ConnectionController.setUserRoot("User1");
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()
    ),
  );
}
