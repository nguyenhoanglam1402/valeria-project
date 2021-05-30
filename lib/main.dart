import 'package:flutter/material.dart';
import 'package:valeria_app/activitives/blank_page.dart';
import 'package:valeria_app/activitives/dashboard.dart';
import 'package:valeria_app/activitives/diagnose.dart';
import 'package:valeria_app/activitives/home.dart';
import 'package:valeria_app/activitives/login.dart';
import 'package:valeria_app/activitives/services.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlankPage()
    ),
  );
}
