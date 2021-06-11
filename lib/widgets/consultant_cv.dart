import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:valeria_app/activitives/blank_page.dart';
import 'package:valeria_app/widgets/notification.dart';
import 'package:valeria_app/widgets/user_avatar.dart';

class ConsultantCV extends StatefulWidget {
  const ConsultantCV({Key key, this.header, this.name, this.image, this.rating, this.job,
    this.experience, this.workplace, this.trustIndex, this.isTrust}) : super(key: key);

  final Widget header;
  final String name;
  final String image;
  final double rating;
  final String job;
  final String workplace;
  final String experience;
  final double trustIndex;
  final bool isTrust;

  @override
  _ConsultantCVState createState() => _ConsultantCVState();
}

class _ConsultantCVState extends State<ConsultantCV> {
  @override
  Widget build(BuildContext context) {

    var userAvatar = new UserAvatar(
      image: widget.image,
      name: widget.name,
    );

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          width: 360,
          height: 500,
          decoration: BoxDecoration(
            color: Color(0xff083654),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  color: Color(0xff083654),
                  blurRadius: 2
              )
            ],
          ),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  (widget.header!=null)? widget.header: Container(),
                ],
              ),
              userAvatar,
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RatingBar.builder(
                      itemCount: 5,
                      initialRating: widget.rating,
                      allowHalfRating: true,
                      itemSize: 20,
                      glowColor: Colors.white70,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, index) {
                        return Icon(
                          FontAwesomeIcons.solidStar,
                          color: Colors.amberAccent,
                        );
                      },
                      onRatingUpdate: (value) {
                        print(value);
                      },
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            FontAwesomeIcons.briefcase,
                            size: 20,
                            color: Color(0xffE6E6E6),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0, left: 10.0),
                            child: Text(
                              'Job title: ${widget.job}',
                              style: TextStyle(
                                  fontSize: 14,
                                  letterSpacing: 0.6,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xffE6E6E6)
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            FontAwesomeIcons.solidBuilding,
                            size: 20,
                            color: Color(0xffE6E6E6),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0, left: 10.0),
                            child: Text(
                              'Workplace: ${widget.workplace}',
                              maxLines: 3,
                              style: TextStyle(
                                  fontSize: 14,
                                  letterSpacing: 0.6,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xffE6E6E6)
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  FontAwesomeIcons.award,
                                  size: 20,
                                  color: Color(0xffE6E6E6),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10.0, left: 10.0),
                                  child: Text(
                                    'Experience:',
                                    maxLines: 10,
                                    style: TextStyle(
                                        fontSize: 14,
                                        letterSpacing: 0.6,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xffE6E6E6)
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                                padding: const EdgeInsets.only(right: 20.0, left: 20.0, top: 15),
                                child: RichText(
                                  text: TextSpan(
                                      children: [
                                        TextSpan(
                                            text: widget.experience,
                                            style: TextStyle(
                                              wordSpacing: 1.2,
                                            )
                                        ),
                                      ]
                                  ),
                                )
                            ),
                          ],
                        )
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            FontAwesomeIcons.starHalfAlt,
                            size: 20,
                            color: Color(0xffE6E6E6),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0, left: 10.0),
                            child: Text(
                              'Trust Index: ${widget.trustIndex} / 5',
                              style: TextStyle(
                                  fontSize: 14,
                                  letterSpacing: 0.6,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xffE6E6E6)
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.userShield,
                            size: 20,
                            color: Color(0xE2B7FF8B),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0, left: 10.0),
                            child: Text(
                              (widget.isTrust)? 'Profile was verified by Valeria': "Profile wasn't verified by Valeria",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: (widget.isTrust)? Color(0xE2B7FF8B): Color(0xE2FF8B8B)
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size(150, 50),
                              primary: Color(0XFF083654),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  side: BorderSide(
                                      color: Colors.white,
                                      width: 2
                                  )
                              )
                          ),
                          onPressed: (){
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) {
                                  return BlankPage(
                                    child: ConfirmedNotification(
                                      consultantAvatar: userAvatar,
                                    ),
                                  );
                                },
                              )
                            );
                          },
                          child: Text(
                              'Book now'
                          )
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
      ),
    );
  }
}
