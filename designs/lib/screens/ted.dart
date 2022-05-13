import 'package:flutter/material.dart';

class Ted extends StatelessWidget {
  const Ted({Key? key}) : super(key: key);

  _giveCard(String imageLink, String authorName, String title, String time) {
    return Card(
      child: Stack(children: [
        Image.network(imageLink),
        Positioned(
          child: Row(children: [
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(authorName, style: TextStyle(fontWeight: FontWeight.normal, fontSize: 10)),
                Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,)),
              ],
            )),
          ],
            ),
            bottom: 10.0,
            left: 10.0,

            ),
            Expanded(child: Column(),
            ),
          ],),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'TED',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: _giveCard("https://i.imgur.com/mjylsyx.png", "Bhavye Malhotra", "What's so sexy about math?", "16:23"),
    );
  }
}
