import 'package:flutter/material.dart';

getBMSAppBar() {
  return PreferredSize(
    preferredSize: Size.fromHeight(100.0),
    child: AppBar(
      backgroundColor: Color(0xff333544),
      leading: Icon(Icons.menu, color: Colors.white),
      centerTitle: true,
      title: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: Color(0xff4c4b5b),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xfffc3152),
                borderRadius: BorderRadius.circular(7),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "NOW SHOWING",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "COMING SOON",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
      actions: const [
        Icon(
          Icons.location_on_sharp,
          color: Colors.white,
        ),
        SizedBox(width: 20),
      ],
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Image.network("https://i.imgur.com/W7l3FUo_d.webp"),
                  SizedBox(width: 10),
                  Text("All Languages"),
                ],
              ),
              VerticalDivider(
                color: Colors.grey.shade300,
                endIndent: 13,
                indent: 13,
              ),
              Row(
                children: [
                  Image.network("https://i.imgur.com/eUJDnqE.png"),
                  SizedBox(width: 10),
                  Text("Cinemas"),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
