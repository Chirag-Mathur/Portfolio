import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../extensions/HoverExtensions.dart ';
import '../screens/AboutScreen.dart';
import '../screens/ProjectScreen.dart';
import 'Skills.dart';
import '../screens/ContactScreen.dart';

Widget appBarWidget(BuildContext context) {
  double fontsize = 25;
  Color textColor = Color(0xff173266);
  return AppBar(
    automaticallyImplyLeading: false,
    toolbarHeight: 120,
    elevation: 3,
    backgroundColor: Colors.transparent,
    title: GestureDetector(
      // padding: EdgeInsets.symmetric(
      //     horizontal: MediaQuery.of(context).size.width * 0.02),
      child: Text(
        "Monikinderjit Singh",
        style: TextStyle(
            fontFamily: 'TheRichJuliet',
            fontSize: 55,
            color: textColor,
            fontWeight: FontWeight.w800),
      ),
      onTap: () {
        Navigator.of(context).pushNamed(AboutScreen.routeName);
      },
    ).showCursorOnHover,
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
          Navigator.of(context).push(PageRouteBuilder(
              pageBuilder: (context, animation, anotherAnimation) {
                return AboutScreen();
              },
              transitionDuration: Duration(milliseconds: 2000),
              transitionsBuilder:
                  (context, animation, anotherAnimation, child) {
                animation = CurvedAnimation(
                    curve: Curves.linearToEaseOut, parent: animation);
                return Align(
                  child: SizeTransition(
                    sizeFactor: animation,
                    child: child,
                    axisAlignment: 1.0,
                  ),
                );
              }),
              );
          // Navigator.of(context).pushNamed(AboutScreen.routeName);
        },
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width * 0.02,
      ),
      // Spacer(),
      // FlatButton(
      //   child: Text(
      //     "Skills",
      //     style: GoogleFonts.domine(
      //       fontWeight: FontWeight.w600,
      //       fontSize: fontsize,
      //       color: textColor,
      //     ),
      //   ),
      //   onPressed: () {
      //     // Navigator.of(context).pushNamed(SkillsScreen.routeName);
      //   },
      // ),
      // SizedBox(
      //   width: MediaQuery.of(context).size.width * 0.02,
      // ),
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
          Navigator.of(context).push(PageRouteBuilder(
              pageBuilder: (context, animation, anotherAnimation) {
                return ProjectScreen();
              },
              transitionDuration: Duration(milliseconds: 2000),
              transitionsBuilder:
                  (context, animation, anotherAnimation, child) {
                animation = CurvedAnimation(
                    curve: Curves.easeOutQuint, parent: animation);
                return Align(
                  child: SizeTransition(
                    sizeFactor: animation,
                    child: child,
                    axisAlignment: -1.0,
                  ),
                );
              }),
          // ProjectScreen.routeName
              );
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
        onPressed: () {
          Navigator.of(context).pushNamed(ContactScreen.routeName);
        },
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width * 0.003,
      ),
      // Spacer(),
    ],
  );
}
