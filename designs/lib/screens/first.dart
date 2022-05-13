// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class First extends StatelessWidget {
  _giveText(String text,
      [double size = 20,
      FontWeight weight = FontWeight.bold,
      Color color = Colors.black]) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        fontWeight: weight,
        color: color,
      ),
    );
  }

  _giveDividerInformationAndRating(
      String heading, String information, double rating) {
    return Column(
      children: [
        Divider(
          height: 20,
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    _giveText(heading, 17, FontWeight.bold),
                    _giveText(information, 10, FontWeight.normal),
                  ],
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
                // set margin right 10
                margin: EdgeInsets.only(right: 10),
              ),
              flex: 4,
            ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFF049533),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: _giveText(
                    rating.toString(),
                    15,
                    FontWeight.bold,
                    Colors.white,
                  ),
                  height: 25,
                  width: 43,
                  alignment: Alignment.center,
                ),
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      child: Image(
                        image: NetworkImage('https://i.imgur.com/yxqc0AW.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    flex: 4,
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: Text(
                              "The Bold Cafe",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            margin: EdgeInsets.all(20),
                          ),
                          flex: 3,
                        ),
                        Container(
                          child: Center(
                            child: Text(
                              "4.0",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xFFF049533),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: 35,
                          width: 60,
                          margin: EdgeInsets.all(20),
                        )
                      ],
                    ),
                    flex: 1,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    _giveText("The Bold Cafe", 24, FontWeight.bold),
                    _giveText("New York, NY", 14, FontWeight.normal),
                    Container(
                        margin: EdgeInsets.only(top: 10),
                        child: _giveText(
                          "Hygiene Rating 4.5",
                        )),
                    _giveText(
                        "Last audited on 20th Sep '17, valid till 21 Mar '18",
                        14,
                        FontWeight.normal),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: _giveText(
                          "The restaurant scored the below ratings on individual secion parameters",
                          14,
                          FontWeight.bold),
                    ),
                    _giveDividerInformationAndRating(
                        "Premises",
                        "The condition and cleanliness of the premises and areas where food is handled",
                        4.5),
                    _giveDividerInformationAndRating(
                        "Premises",
                        "The condition and cleanliness of the premises and areas where food is handled",
                        4.5),
                    _giveDividerInformationAndRating(
                        "Premises",
                        "The condition and cleanliness of the premises and areas where food is handled",
                        4.5),
                  ],
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
                margin: EdgeInsets.all(20),
              ),
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
