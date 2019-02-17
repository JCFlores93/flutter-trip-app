import 'package:flutter/material.dart';
import 'package:platzi_trips_app/description_place.dart';
import 'package:platzi_trips_app/header_appbar.dart';
import 'package:platzi_trips_app/review_list.dart';

class HomeTrips extends StatelessWidget {

  String dummyText = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages";
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        HeaderAppBar(),
        ListView(children: <Widget>[
          DescriptionPlace("Brasil",4, dummyText),
          ReviewList(),
        ],),
      ],
    );


  }
}