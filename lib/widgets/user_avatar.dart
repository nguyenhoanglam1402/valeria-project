import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {

  const UserAvatar({Key key, this.image, this.name}) : super(key: key);
  final image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 30, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  image,
                  width: 150,
                  height: 150,
                ),
              )
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  letterSpacing: 0.8,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            )
          ],
        ),

      ],
    );
  }
}
