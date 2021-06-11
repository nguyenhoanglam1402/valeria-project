import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:valeria_app/widgets/content_container.dart';

class HospitalPickedNotification extends StatelessWidget {
  const HospitalPickedNotification({Key key, this.imageSrc,
    this.hospitalName, this.rating}) : super(key: key);

  final String imageSrc;
  final String hospitalName;
  final double rating;

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
                      FontAwesomeIcons.hospitalSymbol,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(
                        'SUCCESSFULLY BOOKED',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontSize: 18
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15.0, right: 20, left: 20),
                      child: Text(
                        "We have completed the scheduling and handed over the "
                            "appointment appointment with the hospital. "
                            "Come on time to ensure your health and the doctor's time. "
                            "Appointment details you can check at My Booking",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 14
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 170,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          (imageSrc != null)? imageSrc : 'lib/resource/default_hospital.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        (hospitalName != null)? hospitalName.toString(): "Something went wrong !",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18
                        ),
                      ),
                    ),
                    RatingBarIndicator(
                      rating: (rating != null)? rating: 0,
                      itemSize: 20,
                      itemPadding: EdgeInsets.symmetric(horizontal: 2),
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Icon(
                          FontAwesomeIcons.solidStar,
                          color: Colors.amber,
                        );
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ElevatedButton(
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
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
