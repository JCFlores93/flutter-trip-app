import 'package:flutter/material.dart';
import 'review.dart';
class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/img/people.jpg","Hayden James","1 review . 5 photos","There is an amazing place in The Bahamas"),
        Review("assets/img/girl.jpg", "Dua Lipa","2 review . 5 photos","There is an amazing place in The Bahamas"),
        Review("assets/img/girl(1).jpg", "Bruno Mars","2 review . 5 photos","There is an amazing place in The Bahamas"),
      ],
    );
  }

}
