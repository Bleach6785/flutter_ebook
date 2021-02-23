import 'package:flutter/material.dart';

import '../constants.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    Key key,
    this.score,
  }) : super(key: key);

  final double score;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 6.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            offset: Offset(3.0, 7.0),
            blurRadius: 20.0,
            color: Color(0xFD3D3D3).withOpacity(.5),
          ),
        ],
      ),
      child: Column(
        children: [
          Icon(
            Icons.star,
            color: kIconColor,
            size: 15.0,
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            "$score",
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
