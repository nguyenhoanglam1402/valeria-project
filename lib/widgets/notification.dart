import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:valeria_app/widgets/content_container.dart';

class ConfirmedNotification extends StatefulWidget {
  final Widget consultantAvatar;
  const ConfirmedNotification({Key key, this.consultantAvatar}) : super(key: key);

  @override
  _ConfirmedNotificationState createState() => _ConfirmedNotificationState();
}

class _ConfirmedNotificationState extends State<ConfirmedNotification> {
  @override
  Widget build(BuildContext context) {
    return ContentContainer(
      height: 500,
      child: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      FontAwesomeIcons.userCheck,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        "VALERIA'S COLLABORATOR IS PICKED",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontSize: 15
                        ),
                      ),
                    )
                  ],
                ),
              ),
              widget.consultantAvatar,
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      FontAwesomeIcons.quoteLeft,
                      color: Colors.white,
                      size: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15),
                      child: Text(
                        "Collaborator's Message",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    Icon(
                      FontAwesomeIcons.quoteRight,
                      color: Colors.white,
                      size: 16,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, right: 25, left: 25, bottom: 20),
                child: Text(
                  'Now we are connected! '
                      'You can keep me informed of your status between now '
                      'and the end of the appointment. I am ready to help you '
                      'from now to the end.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontSize: 14
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.popUntil(context, ModalRoute.withName('/'));
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(170, 45),
                  primary: Color(0xff083654),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: BorderSide(
                      width: 2,
                      color: Colors.white,
                    ),
                  )
                ),
                child: Text(
                  'Return home page',
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
