import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geocoder/geocoder.dart';
import 'package:valeria_app/widgets/consultant_cv.dart';
import 'package:valeria_app/widgets/content_container.dart';
import 'package:geolocator/geolocator.dart';
import 'package:valeria_app/widgets/hospital_picker.dart';


class AddressPicker extends StatefulWidget {

  final flow;
  const AddressPicker({Key key, this.flow}) : super(key: key);

  @override
  _AddressPickerState createState() => _AddressPickerState();
}

class _AddressPickerState extends State<AddressPicker> {

  var _addressController = TextEditingController();

  Future<void> _determinePosition() async {
    bool isServiceEnable;
    LocationPermission locationPermission;

    isServiceEnable = await Geolocator.isLocationServiceEnabled();
    if(!isServiceEnable){
      Fluttertoast.showToast(
          msg: 'The services is not enable !',
          toastLength: Toast.LENGTH_LONG,
          fontSize: 16
      );
      log("The services is not enable !");
      return Future.error("The service is not enable !");
    }

    locationPermission = await Geolocator.checkPermission();
    if(locationPermission == LocationPermission.denied){
      locationPermission = await Geolocator.requestPermission();
      if(locationPermission == LocationPermission.denied) {
        Fluttertoast.showToast(
          msg: 'Location permission denied',
          toastLength: Toast.LENGTH_LONG,
          fontSize: 16
        );
        return Future.error("This service is denied");
      }
    }

    if(locationPermission == LocationPermission.deniedForever){
      return Future.error('This permission is denied forever');
    }

    Position position = await Geolocator.getCurrentPosition();

    Coordinates coordinates = new Coordinates(position.latitude, position.longitude);
    var addresses = await Geocoder.local.findAddressesFromCoordinates(coordinates);
    print(coordinates.toString());
    _addressController.text = addresses[0].addressLine;
    Fluttertoast.showToast(
      msg: 'Successful positioning',
      backgroundColor: Color(0xff083654),
      textColor: Colors.white
    );
    return Future.value(addresses[0].addressLine);
  }

  void controlFlow(){
    switch(widget.flow){
      case 1:
        var consultantRecommendBox = new Dialog(
          backgroundColor: Colors.transparent,
          insetPadding: EdgeInsets.only(left: 5, right: 5),
          child: ConsultantCV(
            header: Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Row(
                children: [
                  Icon(
                    FontAwesomeIcons.searchLocation,
                    color: Colors.white,
                    size: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      'Valeria has found !',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  )
                ],
              ),
            ),
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

        );
        showDialog(
          context: context,
          builder: (context) => consultantRecommendBox,
        );
        break;
      case 2:
        var hospitalSchedule = new Dialog(
          backgroundColor: Colors.transparent,
          insetPadding: EdgeInsets.only(left: 25, right: 25),
          child: HospitalPicker(),
        );
        showDialog(
          context: context,
          builder: (context) => hospitalSchedule,
        );
        break;
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _determinePosition();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: ContentContainer(
        height: 350,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Icon(
                          FontAwesomeIcons.mapMarkerAlt,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Address',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          letterSpacing: 0.7,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                    child: TextField(
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16,
                          wordSpacing: 1.5,
                          color: Colors.white
                      ),
                      onTap: () async{

                      },
                      controller: _addressController,
                      decoration: InputDecoration(
                          hintText: 'Example: No.110 The Lu, Son Tra, Danang',
                          hintStyle: TextStyle(
                            color: Color(0xff8a9fae),
                          ),
                          contentPadding: EdgeInsets.only(
                              top: 5,
                              bottom: 5,
                              right: 15,
                              left: 15
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: BorderSide(
                                  color: Color(0xffF2F2F2),
                                  width: 2
                              )
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: BorderSide(
                                width: 2,
                                color: Color(0xFFF2F2F2),
                              )
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: BorderSide(
                                  width: 2,
                                  color: Color(0xffF2F2F2)
                              )
                          )
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Icon(
                          FontAwesomeIcons.globeAsia,
                          color: Colors.white70,
                          size: 20,
                        ),
                      ),
                      Text(
                          'Location Service',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white70,
                              letterSpacing: 0.7,
                              fontWeight: FontWeight.w600
                          )
                      ),
                    ],
                  ),
                  Padding(
                      padding: const EdgeInsets.only(
                          top: 10.0,
                          right: 15,
                          left: 15,
                          bottom: 10
                      ),
                      child: Text(
                        'We strongly recommend that users always keep '
                            'your Location Permission enabled during Valeria use. '
                            'The system can easily detect, monitor and give quick '
                            'and timely alerts if you need help and are not able '
                            'to use the Valeria to ask for help by yourself.',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            letterSpacing: 0.6,
                            color: Colors.white70
                        ),
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xff083654),
                              minimumSize: Size(150, 45),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  side: BorderSide(
                                    width: 2,
                                    color: Colors.white,
                                  )
                              )
                          ),
                          onPressed: (){
                            controlFlow();
                          },
                          child: Text(
                            'Confirm',
                            style: TextStyle(
                              letterSpacing: 0.7,
                              fontSize: 16,

                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
