import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:valeria_app/widgets/consultant_cv.dart';
import 'package:valeria_app/widgets/user_avatar.dart';

class ConsultantForm extends StatefulWidget {
  const ConsultantForm({Key key}) : super(key: key);

  @override
  _ConsultantFormState createState() => _ConsultantFormState();
}

class _ConsultantFormState extends State<ConsultantForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 500,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: [
          ConsultantCV(
            name: 'Johnathan Ma',
            image: 'lib/resource/doctor.png',
            rating: 5,
            experience: "With more than 10 years of experience in the medical field,"
                " he has successfully studied and treated many patients. "
                "He has been certified as the hospital's best and most experienced doctor "
                "by the 3 nearest hospitals he has worked at during his time working for this "
                "hospital organization.",
            isTrust: true,
            job: 'GP-general doctor',
            workplace: 'UW Medical Center',
            trustIndex: 4.9,
          ),
          ConsultantCV(
            name: 'Dang Tieu Binh',
            image: 'lib/resource/vietnamese_doctor.png',
            rating: 4.5,
            experience: "With more than 7 years of experience in medical"
                " examination and treatment at Bach Mai hospital. "
                "I am confident in my ability to examine and try to bring you the best services.",
            isTrust: true,
            job: 'Internal doctor',
            workplace: 'Bach Mai Hospital',
            trustIndex: 4.5,
          ),
          ConsultantCV(
            name: 'Indah Kusuma',
            image: 'lib/resource/female_vietnamese_doctor.png',
            rating: 5,
            experience: "With 5 years of experience performing examinations and "
                "surgical assistants, with many different complex cases. I believe"
                " I will be qualified to serve and understand the conditions you are experiencing.",
            isTrust: true,
            job: 'Cardiology doctor',
            workplace: 'Philippine Heart Center',
            trustIndex: 4.9,
          ),
        ],
      ),
    );
  }
}
