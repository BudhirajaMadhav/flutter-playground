import 'package:flutter/material.dart';
import 'package:revision/widgets/bmsAppBar.dart';
import 'package:revision/widgets/showCard.dart';

class BookMyShow extends StatelessWidget {
  const BookMyShow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: getBMSAppBar(),
          body: SingleChildScrollView(
              child: Column(
            children: [
              Card(child: ShowCard()),
              Card(child: ShowCard()),
            ],
          ))),
    );
  }
}
