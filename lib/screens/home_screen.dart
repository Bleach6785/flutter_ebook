import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/book_rating.dart';
import '../widgets/two_side_rounded_button.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/main_page_bg.png"),
            alignment: Alignment.topCenter,
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height * .1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.display1,
                  children: [
                    TextSpan(text: "What are you \nreading "),
                    TextSpan(
                      text: "today?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
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
                  Image.asset(
                    "assets/images/book-1.png",
                    width: 150.0,
                  ),
                  Positioned(
                    top: 35.0,
                    right: 10.0,
                    child: Column(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.favorite_border,
                          ),
                          onPressed: () {},
                        ),
                        BookRating(
                          score: 4.9,
                        ),
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
                                    text: "Crushing & Influence\n",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "Gary Venchuk",
                                    style: TextStyle(
                                      color: kLightBlackColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Spacer(),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {},
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
                                  press: () {},
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
            ),
          ],
        ),
      ),
    );
  }
}
