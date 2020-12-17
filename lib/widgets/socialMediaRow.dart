import 'package:flutter/material.dart';
import 'package:my_portfolio/screens/AboutScreen.dart';

Widget socialMediaRow() {
  return Row(
    children: [
      IconButton(
        icon: Image.asset(
          'assets/images/linkedin.png',
        ),
        onPressed: () {
          AboutScreen.openLink("https://www.linkedin.com/in/monikinderjit-singh/");
        },
        iconSize: 39,
      ),
      IconButton(
        icon: Image.asset(
          'assets/images/twitter.png',
        ),
        onPressed: () {
          AboutScreen.openLink("https://twitter.com/MonikIJS");
        },
        iconSize: 42,
      ),
      IconButton(
        icon: Image.asset(
          'assets/images/github.png',
        ),
        onPressed: () {
          AboutScreen.openLink("https://github.com/Monik09");
        },
        iconSize: 42,
      ),
      IconButton(
        icon: Image.asset(
          'assets/images/fb.png',
        ),
        onPressed: () {
          AboutScreen.openLink("https://www.facebook.com/monik.inderjitsingh.3");
        },
        iconSize: 37,
      ),
      IconButton(
        icon: Image.asset(
          'assets/images/insta.png',
        ),
        onPressed: () {
          AboutScreen.openLink("https://www.instagram.com/monikinderjit_singh_/");
        },
        iconSize: 43,
      ),
    ],
  );
}
