import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/widgets/socialMediaRow.dart';

import '../extensions/HoverExtensions.dart ';
import '../screens/AboutScreen.dart';
import '../screens/ProjectScreen.dart';

Widget appBarWidget(BuildContext context) {
  double fontsize = 25;
  Color textColor = Color(0xff173266);
  return AppBar(
    automaticallyImplyLeading: false,
    toolbarHeight: 90,
    elevation: 3,
    backgroundColor: Colors.transparent,
    leading: GestureDetector(
      
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
leadingWidth: 400,
title: socialMediaRow(),
    actions: [
      Padding(
        padding: EdgeInsets.all(16.0),
        child: FlatButton(
          hoverColor: Colors.transparent,
          splashColor: Colors.blue[900],
          child: Text(
            "About Me",
            style: GoogleFonts.domine(
              fontWeight: FontWeight.w600,
              fontSize: fontsize,
              color: textColor,
            ),
          ),
          onPressed: () {
            Navigator.of(context).push(
              PageRouteBuilder(
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
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width * 0.02,
      ),
      Padding(
        padding: EdgeInsets.all(16.0),
        child: FlatButton(
          hoverColor: Colors.transparent,
          splashColor: Colors.blue[900],
          child: Text(
            "Projects",
            style: GoogleFonts.domine(
              fontWeight: FontWeight.w600,
              fontSize: fontsize,
              color: textColor,
            ),
          ),
          onPressed: () {
            Navigator.of(context).push(
              PageRouteBuilder(
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
                },
              ),
              // ProjectScreen.routeName
            );
          },
        ),
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width * 0.02,
      ),

      Padding(
        padding: EdgeInsets.all(16.0),
        child: RaisedButton(
          hoverColor: Colors.transparent,
          splashColor: Colors.blue[900],
          color: Colors.transparent,
          hoverElevation: 14,
          elevation: 7,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1.6,
              color: Colors.blue[900],
            ),
          ),
          // hoverColor: Colors.deepPurple,
          child: Text(
            "Resume",
            style: GoogleFonts.faustina(
              fontWeight: FontWeight.w600,
              fontSize: 28,
              color: textColor,
            ),
          ),
          onPressed: () {
            AboutScreen.openLink(
                "https://drive.google.com/file/d/1GTGLuEK-5l2B2nxEemUSMauEYQzOCYCs/view?usp=sharing");
            // Navigator.of(context).pushNamed(ContactScreen.routeName);
          },
        ),
      ),
      // SizedBox(
      //   width: MediaQuery.of(context).size.width * 0.003,
      // ),
      // Spacer(),
    ],
  );
}
