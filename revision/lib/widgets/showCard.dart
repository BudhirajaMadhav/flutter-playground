import 'package:flutter/material.dart';

class ShowCard extends StatelessWidget {
  const ShowCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(children: [
          Expanded(
              child: Stack(
                children: [
                  Image.network(
                    "https://i.imgur.com/RaFOxAU.jpg",
                    // width: double.infinity,
                    fit: BoxFit.cover,
                    height: double.infinity,
                  ),
                  Positioned(
                    bottom: 25,
                    left: 5,
                    child: Container(
                        height: 30,
                        decoration: ShapeDecoration(
                          color: Colors.transparent,
                          shape: CircleBorder(
                            side: BorderSide(
                              color: Colors.white,
                              width: 3,
                            ),
                          ),
                        ),
                        child: CircleAvatar(
                          child: Text("U",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15)),
                          backgroundColor: Colors.black.withOpacity(0.5),
                        )),
                  ),
                  Material(
                    elevation: 10,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xff59d367),
                        boxShadow: [
                          // shadow on right and bottom
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 0,
                            offset: Offset(2, 2),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(5, 2, 5, 2),
                        child:
                            Text("New", style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                  Positioned(
                      right: 10,
                      bottom: 15,
                      child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Column(
                              children: [
                                Row(children: [
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                    size: 18,
                                  ),
                                  SizedBox(width: 5),
                                  Text("87%",
                                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20)),
                                ]),
                                SizedBox(height: 5),
                                Text("7,809 votes",
                                    style: TextStyle(color: Colors.white))
                              ],
                            ),
                          ))),
                ],
              ),
              flex: 3),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Hindi Medium",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15)),
                          SizedBox(height: 3),
                          Row(
                            children: [
                              Text("Hindi", style: TextStyle(fontSize: 12)),
                              SizedBox(width: 5),
                              Container(
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      color: Colors.grey.shade300,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(4, 1, 4, 1),
                                  child: Text("2D",
                                      style: TextStyle(fontSize: 13)),
                                ),
                              ),
                            ],
                          )
                        ]),
                    Container(
                      margin: EdgeInsets.only(right: 3),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 7),
                      decoration: BoxDecoration(
                        color: Color(0xffff2e55),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text("BOOK",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
              flex: 1),
        ]));
  }
}
