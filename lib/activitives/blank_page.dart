import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:valeria_app/activitives/services.dart';
import 'package:valeria_app/widgets/schedule_picker.dart';


class BlankPage extends StatelessWidget {
  final Widget child;
  const BlankPage({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF8EA),
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 20.0,
                          bottom: 20.0
                      ),
                      child: Image.asset(
                        'lib/resource/logo.png',
                        height: 100,
                        width: 100,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 20,
                          right: 20,
                          left: 20,
                          bottom: 5
                      ),
                      child: child,
                    ),
                  ],
                )
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: TextButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Icon(
                  FontAwesomeIcons.home,
                  color: Color(0xFF083654),
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}
