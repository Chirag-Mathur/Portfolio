import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screens/ProjectScreen.dart';

Widget appBarWidget(BuildContext context) {
  double fontsize = 25;
  Color textColor = Color(0xff173266);
  return AppBar(
    automaticallyImplyLeading: false,
    toolbarHeight: 120,
    elevation: 0,
    backgroundColor: Colors.transparent,
    title: FlatButton(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.02),
      child: Text(
        "Monikinderjit Singh",
        style: TextStyle(
            fontFamily: 'TheRichJuliet',
            fontSize: 55,
            color: textColor,
            fontWeight: FontWeight.w800),
      ),
      onPressed: null,
    ),
    actions: [
      FlatButton(
        child: Text(
          "About Me",
          style: GoogleFonts.domine(
            fontWeight: FontWeight.w600,
            fontSize: fontsize,
            color: textColor,
          ),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed('/');
        },
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width * 0.02,
      ),
      // Spacer(),
      FlatButton(
        child: Text(
          "Skills",
          style: GoogleFonts.domine(
            fontWeight: FontWeight.w600,
            fontSize: fontsize,
            color: textColor,
          ),
        ),
        onPressed: null,
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width * 0.02,
      ),
      // Spacer(),
      FlatButton(
        child: Text(
          "Projects",
          style: GoogleFonts.domine(
            fontWeight: FontWeight.w600,
            fontSize: fontsize,
            color: textColor,
          ),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(ProjectScreen.routeName);
        },
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width * 0.02,
      ),
      // Spacer(),
      FlatButton(
        child: Text(
          "Contact Me",
          style: GoogleFonts.domine(
            fontWeight: FontWeight.w600,
            fontSize: fontsize,
            color: textColor,
          ),
        ),
        onPressed: null,
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width * 0.003,
      ),
      // Spacer(),
    ],
  );
}
