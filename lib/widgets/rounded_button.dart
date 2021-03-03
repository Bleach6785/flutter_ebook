import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key key,
    this.text,
    this.press,
    this.verticalPadding = 16.0,
    this.fontSize = 16.0,
  }) : super(key: key);

  final String text;
  final Function press;
  final double verticalPadding;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(vertical: 16.0),
        padding:
            EdgeInsets.symmetric(vertical: verticalPadding, horizontal: 30),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30.0),
          boxShadow: [
            BoxShadow(
              offset: Offset(0.0, 15.0),
              blurRadius: 30.0,
              color: Color(0xFF666666).withOpacity(.11),
            ),
          ],
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
