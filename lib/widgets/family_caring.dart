import 'package:flutter/material.dart';
import 'package:valeria_app/widgets/content_container.dart';
import 'package:valeria_app/widgets/message_item.dart';

class FamilyCaring extends StatefulWidget {
  const FamilyCaring({Key key}) : super(key: key);

  @override
  _FamilyCaringState createState() => _FamilyCaringState();
}

class _FamilyCaringState extends State<FamilyCaring> {
  @override
  Widget build(BuildContext context) {
    return ContentContainer(
      height: 500,
      child: ListView(
        children: [
          MessageItem(
            imageSrc: 'lib/resource/daughter.jpg',
            userName: 'Hồng Gấm (Daughter)',
            reviewContent:"We discovered that Mr. Hong Dang's heart rate "
                "increased abnormally. To avoid any problems, "
                "please contact us immediately!",
          ),
          MessageItem(
            imageSrc: 'lib/resource/female_vietnamese_doctor.png',
            userName: 'Indah Kusuma',
            reviewContent:"We detect signs of abnormal heart rhythm "
                "of the patient at the moment, please contact"
                " and offer the fastest solution.",
          ),
          MessageItem(
            userName: 'Ng.Huan (Nearest User)',
            reviewContent:"Detect someone in need of help near"
                " where you are showing signs of a heart attack."
                " Please respond quickly.",
          ),
        ],
      ),
    );
  }
}
