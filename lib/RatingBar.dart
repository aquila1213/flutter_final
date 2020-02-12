import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class RatingBar extends StatefulWidget {
  RatingBarWidget createState() => RatingBarWidget();
}

class RatingBarWidget extends State {
  double rating = 0;

  @override
  Widget build(BuildContext context) {
    return
//      Column(
//      children: <Widget>[
//        Padding(
//            padding: const EdgeInsets.all(8.0),
//            child: Text('Star Raiting Bar', style: TextStyle(fontSize: 15))),
//        SmoothStarRating(
//          allowHalfRating: false,
//          onRatingChanged: (value) {
//            setState(() {
//              rating = value;
//            });
//          },
//          starCount: 5,
//          rating: rating,
//          size: 45.0,
//          color: Colors.green,
//          borderColor: Colors.green,
//          spacing: 0.0,
//        ),
//        Padding(
//            padding: const EdgeInsets.all(8.0),
//            child:
//                Text('Rating = ' + '$rating', style: TextStyle(fontSize: 15))),
//      ],
//    );

        SmoothStarRating(
      allowHalfRating: true,
      onRatingChanged: (value) {
        setState(() {
          rating = value;
        });
      },
      starCount: 5,
      rating: rating,
      size: 45.0,
      color: Colors.green,
      borderColor: Colors.green,
      spacing: 0.0,
    );
  }
}
