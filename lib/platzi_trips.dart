import 'package:flutter/material.dart';
import 'package:platzi_trips_app/description_place.dart';
import 'package:platzi_trips_app/header_appbar.dart';
import 'package:platzi_trips_app/home_trips.dart';
import 'package:platzi_trips_app/profile_trips.dart';
import 'package:platzi_trips_app/review_list.dart';
import 'package:platzi_trips_app/search_trips.dart';

class PlatziTrips extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _PlatziTrips();
  }
}

class _PlatziTrips extends State<PlatziTrips> {
  int indexTap = 0;

  final List<Widget> widgetsChildren = [
    HomeTrips(),
    SearchTrips(),
    ProfileTrips()
  ];
  void onTapTapped (int index) {
    setState(() {
      indexTap = index;
    });
  }
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
              canvasColor: Colors.white,
              primaryColor: Colors.purple
          ),
          child: BottomNavigationBar(
              currentIndex: indexTap,
              items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),title: Text("")),
            BottomNavigationBarItem(icon: Icon(Icons.search),title: Text("")),
            BottomNavigationBarItem(icon: Icon(Icons.person),title: Text(""))
          ])
      ),
    );
  }
}