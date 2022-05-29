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
              Card(
                child: ShowCard(),
                elevation: 15,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.fromLTRB(10, 15, 10, 15),
                shadowColor: Colors.grey.withOpacity(0.5),
              ),
              Card(
                child: ShowCard(),
                elevation: 15,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.fromLTRB(10, 15, 10, 15),
                shadowColor: Colors.grey.withOpacity(0.5),
              ),
              Card(
                child: ShowCard(),
                elevation: 15,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.fromLTRB(10, 15, 10, 15),
                shadowColor: Colors.grey.withOpacity(0.5),
              ),
              Card(
                child: ShowCard(),
                elevation: 15,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.fromLTRB(10, 15, 10, 15),
                shadowColor: Colors.grey.withOpacity(0.5),
              ),
            ],
          )),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "Search",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border_rounded),
                label: "Just For You",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile",
              ),
            ],
          )),
    );
  }
}
