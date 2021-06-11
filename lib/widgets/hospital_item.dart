import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:valeria_app/activitives/blank_page.dart';
import 'package:valeria_app/widgets/content_container.dart';
import 'package:valeria_app/widgets/hospital_picked_notification.dart';

class HospitalItem extends StatefulWidget {
  const HospitalItem({
    Key key, this.nameHospital, this.starRating,
    this.address, this.phoneNumber, this.imageSrc
  }) : super(key: key);
  final String nameHospital;
  final double starRating;
  final String address;
  final String phoneNumber;
  final String imageSrc;

  @override
  _HospitalItemState createState() => _HospitalItemState();
}

class _HospitalItemState extends State<HospitalItem> {


  Route _customRoute(Widget nextPage){
    return PageRouteBuilder(
      transitionsBuilder: (context, animation, secondaryAnimation, child){
        animation = CurvedAnimation(parent: animation, curve: Curves.linear);
        return ScaleTransition(
          child: FadeTransition(
            opacity: animation,
            child: nextPage,
          ),
          alignment: Alignment.bottomCenter,
          scale: animation,
        );
      },
      transitionDuration: Duration(milliseconds: 200),
      reverseTransitionDuration: Duration(milliseconds: 200),
      pageBuilder: (context, animation, secondaryAnimation) => nextPage,
    );
  }

  void _openNotification(){
    Navigator.push(
      context,
      _customRoute(
        BlankPage(
          child: HospitalPickedNotification(
            imageSrc: widget.imageSrc,
            rating: widget.starRating,
            hospitalName: widget.nameHospital,
          ),
        )
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 10),
      child: GestureDetector(
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                  color: Colors.white,
                  width: 2
              )
          ),
          height: 150,
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    children: [
                      Text(
                        widget.nameHospital,
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontSize: 16
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 10),
                        child: RatingBarIndicator(
                          rating: (widget.starRating != null)? widget.starRating: 0,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4),
                          itemSize: 17,
                          itemBuilder: (context, index) {
                            return Icon(
                              FontAwesomeIcons.solidStar,
                              color: Colors.amber,
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Text(
                          (widget.address != null)? widget.address: 'Temporarily not updated with location',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.white70,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10,right: 10.0),
                        child: Text(
                          (widget.phoneNumber != null)? widget.phoneNumber: 'N/A Phone number',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.white70,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      (widget.imageSrc != null)? widget.imageSrc : 'lib/resource/default_hospital.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        onTap: (){
          _openNotification();
        },
      )
    );
  }
}
