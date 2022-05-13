import 'package:flutter/material.dart';

class ShowCard extends StatelessWidget {
  const ShowCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
            ),
          ],
        ),
        child: Column(children: [
          Expanded(
              child: Stack(
                children: [
                  Image.network(
                    "https://i.imgur.com/RaFOxAU.jpg",
                    width: double.infinity,
                    fit: BoxFit.cover,
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
                  )
                ],
              ),
              flex: 3),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Hindi Medium",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20)),
                          Row(
                            children: [
                              Text("Hindi", style: TextStyle(fontSize: 15)),
                              Container(
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      color: Colors.grey.shade300,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child:
                                      Text("2D", style: TextStyle(fontSize: 15)),
                                ),
                              ),
                            ],
                          )
                        ]),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      height: 40,
                      width: 100,
                      alignment: Alignment.center,
                      child: Text("BOOK",
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                  ],
                ),
              ),
              flex: 1),
        ]));
  }
}
