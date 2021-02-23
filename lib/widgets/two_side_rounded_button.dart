import 'package:flutter/material.dart';

import '../constants.dart';

class TwoSideRoundedButton extends StatelessWidget {
  const TwoSideRoundedButton({
    Key key,
    this.text,
    this.radius = 29.0,
    this.press,
  }) : super(key: key);

  final String text;
  final double radius;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
          vertical: 10.0,
        ),
        decoration: BoxDecoration(
          color: kBlackColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(radius),
            bottomRight: Radius.circular(radius),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
