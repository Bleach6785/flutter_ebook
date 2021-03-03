import 'package:flutter/material.dart';
import 'package:flutter_ebook/widgets/reading_card_list.dart';

import '../constants.dart';
import '../widgets/book_rating.dart';
import '../widgets/two_side_rounded_button.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
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
                  SizedBox(height: size.height * .1),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.display1,
                        children: [
                          TextSpan(text: "What are you \nreading "),
                          TextSpan(
                            text: "today?",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30.0),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ReadingListCard(
                          image: 'assets/images/book-1.png',
                          title: 'Crushing & Influence',
                          auth: 'Gary Venchuk',
                          rating: 4.9,
                        ),
                        ReadingListCard(
                          image: 'assets/images/book-2.png',
                          title: 'Top Ten Business Hacks',
                          auth: 'Herman Joel',
                          rating: 4.8,
                        ),
                        SizedBox(
                          width: 30.0,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.display1,
                            children: [
                              TextSpan(text: 'Best of the '),
                              TextSpan(
                                text: 'day',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        bestOfTheDayCard(size, context),
                        RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.display1,
                            children: [
                              TextSpan(text: 'Continue '),
                              TextSpan(
                                text: 'reading...',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          height: 80.0,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(38.5),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0.0, 10.0),
                                blurRadius: 33.0,
                                color: Color(0xFFD3D3D3).withOpacity(.84),
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(38.5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 30.0, right: 20.0),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Crushing & Influence',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                'Gary Venchuk',
                                                style: TextStyle(
                                                  color: kLightBlackColor,
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Text(
                                                  'Chapter 7 of 10',
                                                  style: TextStyle(
                                                    fontSize: 10.0,
                                                    color: kLightBlackColor,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 5.0),
                                            ],
                                          ),
                                        ),
                                        Image.asset(
                                          'assets/images/book-1.png',
                                          width: 55.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 7.0,
                                  width: size.width * .65,
                                  decoration: BoxDecoration(
                                    color: kProgressIndicator,
                                    borderRadius: BorderRadius.circular(7.0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 40.0),
                      ],
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

  Container bestOfTheDayCard(Size size, BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      width: double.infinity,
      height: 205.0,
      child: Stack(
        children: [
          Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              padding: EdgeInsets.only(
                left: 24.0,
                top: 24.0,
                right: size.width * .35,
              ),
              height: 185.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFEAEAEA).withOpacity(.45),
                borderRadius: BorderRadius.circular(29.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'New York Time Best For 11th March 2020',
                    style: TextStyle(
                      fontSize: 9.0,
                      color: kLightBlackColor,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    'How To Win \nFrineds & Influence',
                    style: Theme.of(context).textTheme.title,
                  ),
                  Text(
                    'Gary Venchuk',
                    style: TextStyle(color: kLightBlackColor),
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    children: [
                      BookRating(score: 4.9),
                      SizedBox(width: 10.0),
                      Expanded(
                        child: Text(
                          'When the earth was flat and everyone wanted to win the game of the best and people...',
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 10.0,
                            color: kLightBlackColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0.0,
            top: 0.0,
            child: Image.asset('assets/images/book-3.png'),
            width: size.width * .37,
          ),
          Positioned(
            bottom: 0.0,
            right: 0.0,
            child: SizedBox(
              height: 40.0,
              width: size.width * .3,
              child: TwoSideRoundedButton(
                text: 'Read',
                radius: 24.0,
                press: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
