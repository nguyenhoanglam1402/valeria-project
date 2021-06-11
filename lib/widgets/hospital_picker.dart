import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:valeria_app/widgets/content_container.dart';
import 'package:valeria_app/widgets/hospital_item.dart';

class HospitalPicker extends StatefulWidget {
  const HospitalPicker({Key key}) : super(key: key);

  @override
  _HospitalPickerState createState() => _HospitalPickerState();
}

class _HospitalPickerState extends State<HospitalPicker> {
  @override
  Widget build(BuildContext context) {
    return ContentContainer(
      height: 500,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15.0, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  FontAwesomeIcons.hospitalAlt,
                  color: Colors.white,
                  size: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    'NEAREST HOSPITAL',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                HospitalItem(
                  imageSrc: 'lib/resource/GCPY.jpg',
                  nameHospital: "Phu Yen General Hospital",
                  address: "Tuy Hoa city, Phu Yen province",
                  phoneNumber: "0257 3823 219",
                  starRating: 4.5,
                ),
                HospitalItem(
                  imageSrc: 'lib/resource/dactin_hospital.png',
                  nameHospital: "Duc Tin Hospital",
                  address: " Ward 5, Tuy Hoa, Phu Yen province",
                  phoneNumber: "0257 3836 836",
                  starRating: 4,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
