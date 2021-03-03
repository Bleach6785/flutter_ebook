import 'package:flutter/material.dart';
import 'package:flutter_ebook/constants.dart';
import 'package:flutter_ebook/widgets/book_rating.dart';
import 'package:flutter_ebook/widgets/two_side_rounded_button.dart';

class ReadingListCard extends StatelessWidget {
  final String image;
  final String title;
  final String auth;
  final double rating;
  final Function pressDetails;
  final Function pressRead;

  const ReadingListCard({
    Key key,
    this.image,
    this.title,
    this.auth,
    this.rating,
    this.pressDetails,
    this.pressRead,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24.0, bottom: 40.0),
      height: 245.0,
      width: 202.0,
      child: Stack(
        children: [
          Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              height: 221.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(29.0),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0.0, 10.0),
                    blurRadius: 33.0,
                    color: kShadowColor,
                  ),
                ],
              ),
            ),
          ),
          Image.asset(image, width: 150.0),
          Positioned(
            top: 35.0,
            right: 10.0,
            child: Column(
              children: [
                IconButton(
                  icon: Icon(Icons.favorite_border),
                  onPressed: () {},
                ),
                BookRating(score: rating),
              ],
            ),
          ),
          Positioned(
            top: 160.0,
            child: Container(
              height: 85.0,
              width: 202.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0),
                    child: RichText(
                      maxLines: 2,
                      text: TextSpan(
                        style: TextStyle(
                          color: kBlackColor,
                        ),
                        children: [
                          TextSpan(
                            text: "$title\n",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: auth,
                            style: TextStyle(color: kLightBlackColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: pressDetails,
                        child: Container(
                          width: 101.0,
                          padding: EdgeInsets.symmetric(
                            vertical: 10.0,
                          ),
                          alignment: Alignment.center,
                          child: Text("Detail"),
                        ),
                      ),
                      Expanded(
                        child: TwoSideRoundedButton(
                          text: "Read",
                          press: pressRead,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}