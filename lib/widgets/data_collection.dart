import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:valeria_app/activitives/diagnose.dart';
import 'package:valeria_app/processes/data_controller.dart';
import 'package:valeria_app/processes/prc_authenticate.dart';

class DataCollection extends StatefulWidget {
  const DataCollection({Key key}) : super(key: key);

  @override
  _DataCollectionState createState() => _DataCollectionState();

}

class _DataCollectionState extends State<DataCollection> {

  bool kidneyGroup = false;
  bool diabetesGroup = false;
  bool highBloodPressureGroup = false;
  bool smokingGroup = false;
  bool drinkingGroup = false;
  bool depressionGroup = false;

  void _updateMedicalRecord(User user){
    DataController.getDailyTrackingRoot().child("kidney_group").child(user.uid).set(kidneyGroup);
    DataController.getDailyTrackingRoot().child("diabetes_group").child(user.uid).set(diabetesGroup);
    DataController.getDailyTrackingRoot().child("highBloodPressure_group").child(user.uid).set(highBloodPressureGroup);
    DataController.getDailyTrackingRoot().child("smoking_group").child(user.uid).set(smokingGroup);
    DataController.getDailyTrackingRoot().child("drinking_group").child(user.uid).set(drinkingGroup);
    DataController.getDailyTrackingRoot().child("depression_group").child(user.uid).set(depressionGroup);
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      width: double.infinity,
      height: 480,
      decoration: new BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xff083654),
          boxShadow: [
            BoxShadow(
                color: Color(0xff083654),
                blurRadius: 2
            )
          ]
      ),
      child: ListView(
        children: [
          Text(
            'WE NEED YOU !',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, right: 10.0, left: 10),
            child: Row(
              children: [
                Padding(
                  child: Icon(
                    FontAwesomeIcons.question,
                    color: Color(0xdce6e6e6),
                    size: 20,
                  ),
                  padding: EdgeInsets.only(right: 10),
                ),
                Text(
                  'Why I have to do this survey ?',
                  style: TextStyle(
                      color: Color(0xdce6e6e6),
                      fontWeight: FontWeight.w600,
                      fontSize: 16
                  ),
                ),
              ],
            )
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 12, right: 12),
            child: Text(
              'In addition to the measurement data from your wearable device,'
                  ' we need information about your daily habits to be able to improve '
                  'the accuracy of the measurement process.\nDo not worried! We will not disclose your personal'
                  ' information to anyone without your permission.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: Color(0xb5e6e6e6)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, right: 10.0, left: 10),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Icon(
                    FontAwesomeIcons.pencilAlt,
                    size: 20,
                    color: Color(0xdce6e6e6),
                  ),
                ),
                Text(
                  "Let's do it !",
                  style: TextStyle(
                      color: Color(0xdce6e6e6),
                      fontWeight: FontWeight.w600,
                      fontSize: 16
                  ),
                ),
              ],
            )
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0, left: 10.0),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Theme(
                    data: ThemeData(
                      unselectedWidgetColor: Color(0xdce6e6e6),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top:20),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: Icon(
                                      FontAwesomeIcons.bacterium,
                                      color: Color(0xdce6e6e6),
                                      size: 16,
                                    ),
                                  ),
                                  Text(
                                    'Kidney problems',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xb5e6e6e6),
                                        fontWeight: FontWeight.w600
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    children: [
                                      Radio(
                                        value: true,
                                        activeColor: Color(0xdce6e6e6),
                                        groupValue: kidneyGroup,
                                        onChanged: (value) {
                                          setState(() {
                                            kidneyGroup = value;
                                          });
                                        },
                                      ),
                                      Text(
                                        'Yes, I have',
                                        style: TextStyle(
                                            color: Color(0xdce6e6e6),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Radio(
                                        value: false,
                                        activeColor: Color(0xdce6e6e6),
                                        groupValue: kidneyGroup,
                                        onChanged: (value) {
                                          setState(() {
                                            kidneyGroup = value;
                                          });
                                        },
                                      ),
                                      Text(
                                        "No, I don't",
                                        style: TextStyle(
                                            color: Color(0xdce6e6e6),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: Icon(
                                      FontAwesomeIcons.pills,
                                      color: Color(0xdce6e6e6),
                                      size: 16,
                                    ),
                                  ),
                                  Text(
                                    'Diabetes problems',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xb5e6e6e6),
                                        fontWeight: FontWeight.w600
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    children: [
                                      Radio(
                                        value: true,
                                        activeColor: Color(0xdce6e6e6),
                                        groupValue: diabetesGroup,
                                        onChanged: (value) {
                                          setState(() {
                                            diabetesGroup = value;
                                          });
                                        },
                                      ),
                                      Text(
                                        'Yes, I have',
                                        style: TextStyle(
                                            color: Color(0xdce6e6e6),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Radio(
                                        value: false,
                                        activeColor: Color(0xdce6e6e6),
                                        groupValue: diabetesGroup,
                                        onChanged: (value) {
                                          setState(() {
                                            diabetesGroup = value;
                                          });
                                        },
                                      ),
                                      Text(
                                        "No, I don't",
                                        style: TextStyle(
                                            color: Color(0xdce6e6e6),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10.0),
                                      child: Icon(
                                        FontAwesomeIcons.heartbeat,
                                        color: Color(0xdce6e6e6),
                                        size: 16,
                                      ),
                                    ),
                                    Text(
                                      'High Blood Pressure problems',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xb5e6e6e6),
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Row(
                                      children: [
                                        Radio(
                                          value: true,
                                          activeColor: Color(0xdce6e6e6),
                                          groupValue: highBloodPressureGroup,
                                          onChanged: (value) {
                                            setState(() {
                                              highBloodPressureGroup = value;
                                            });
                                            },
                                        ),
                                        Text(
                                          'Yes, I have',
                                          style: TextStyle(
                                              color: Color(0xdce6e6e6),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Radio(
                                          value: false,
                                          activeColor: Color(0xdce6e6e6),
                                          groupValue: highBloodPressureGroup,
                                          onChanged: (value) {
                                            setState(() {
                                              highBloodPressureGroup = value;
                                            });
                                          }),
                                        Text(
                                          "No, I don't",
                                          style: TextStyle(
                                              color: Color(0xdce6e6e6),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ]
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10.0),
                                      child: Icon(
                                        FontAwesomeIcons.smoking,
                                        color: Color(0xdce6e6e6),
                                        size: 16,
                                      ),
                                    ),
                                    Text(
                                      'Smoking problems',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xb5e6e6e6),
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Row(
                                      children: [
                                        Radio(
                                          value: true,
                                          activeColor: Color(0xdce6e6e6),
                                          groupValue: smokingGroup,
                                          onChanged: (value) {
                                            setState(() {
                                              smokingGroup = value;
                                            });
                                          },
                                        ),
                                        Text(
                                          'Yes, I have',
                                          style: TextStyle(
                                              color: Color(0xdce6e6e6),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Radio(
                                            value: false,
                                            activeColor: Color(0xdce6e6e6),
                                            groupValue: smokingGroup,
                                            onChanged: (value) {
                                              setState(() {
                                                smokingGroup = value;
                                              });
                                            }),
                                        Text(
                                          "No, I don't",
                                          style: TextStyle(
                                              color: Color(0xdce6e6e6),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ]
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10.0),
                                      child: Icon(
                                        FontAwesomeIcons.wineBottle,
                                        color: Color(0xdce6e6e6),
                                        size: 16,
                                      ),
                                    ),
                                    Text(
                                      'Drinking alcohol over 4 times/week',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xb5e6e6e6),
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Row(
                                      children: [
                                        Radio(
                                          value: true,
                                          activeColor: Color(0xdce6e6e6),
                                          groupValue: drinkingGroup,
                                          onChanged: (value) {
                                            setState(() {
                                              drinkingGroup = value;
                                              print(drinkingGroup);
                                            });
                                          },
                                        ),
                                        Text(
                                          'Yes, I have',
                                          style: TextStyle(
                                              color: Color(0xdce6e6e6),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Radio(
                                            value: false,
                                            activeColor: Color(0xdce6e6e6),
                                            groupValue: drinkingGroup,
                                            onChanged: (value) {
                                              setState(() {
                                                drinkingGroup = value;
                                              });
                                            }),
                                        Text(
                                          "No, I don't",
                                          style: TextStyle(
                                              color: Color(0xdce6e6e6),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ]
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10.0),
                                      child: Icon(
                                        FontAwesomeIcons.brain,
                                        color: Color(0xdce6e6e6),
                                        size: 16,
                                      ),
                                    ),
                                    Text(
                                      'Depression problems',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xb5e6e6e6),
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Row(
                                      children: [
                                        Radio(
                                          value: true,
                                          activeColor: Color(0xdce6e6e6),
                                          groupValue: depressionGroup,
                                          onChanged: (value) {
                                            setState(() {
                                              depressionGroup = value;
                                            });
                                          },
                                        ),
                                        Text(
                                          'Yes, I have',
                                          style: TextStyle(
                                              color: Color(0xdce6e6e6),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Radio(
                                            value: false,
                                            activeColor: Color(0xdce6e6e6),
                                            groupValue: depressionGroup,
                                            onChanged: (value) {
                                              setState(() {
                                                depressionGroup = value;
                                              });
                                            }),
                                        Text(
                                          "No, I don't",
                                          style: TextStyle(
                                              color: Color(0xdce6e6e6),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ]
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () async{
                            _updateMedicalRecord(UserAuth.auth.currentUser);
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) {
                                  return DiagnosePage();
                                },
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xdce6e6e6),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)
                            )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  FontAwesomeIcons.checkCircle,
                                  color: Colors.black87,
                                ),
                              ),
                              Text(
                                'Complete',
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 16
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )

                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
