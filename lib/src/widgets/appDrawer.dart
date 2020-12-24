import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/src/info/globals.dart';
import 'package:my_portfolio/src/screens/AboutScreen.dart';
import 'package:my_portfolio/src/screens/ProjectScreen.dart';
import 'package:my_portfolio/src/widgets/socialMediaRow.dart';

Widget appDrawer(BuildContext context) {
  return Container(
    width: 200,
    // decoration: BoxDecoration(
    //   borderRadius: BorderRadius.only(
    //     bottomRight: Radius.circular(70),
    //     topRight: Radius.circular(70),
    //   ),
    // ),
    height: MediaQuery.of(context).size.height * 0.85,
    color: Globals.backgroundColorLight,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 12.0),
          child: FlatButton(
            hoverColor: Colors.transparent,
            splashColor: Colors.blue[900],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(70),
              ),
            ),
            child: Text(
              "About Me",
              style: GoogleFonts.domine(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: Color(0xff173266),
              ),
            ),
            onPressed: () {
              // if (isHomePage) {
              //   scrollController.animateTo(
              //     -MediaQuery.of(context).size.height,
              //     duration: Duration(
              //       seconds: 5,
              //     ),
              //     curve: Curves.easeOut,
              //   );
              // } else {
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
                      child: FadeTransition(
                        // sizeFactor: animation,
                        child: child,
                        opacity: animation,
                        // axisAlignment: 1.0,
                      ),
                    );
                  },
                ),
              );
              // }
            },
          ),
        ),
        // SizedBox(
        //   width: MediaQuery.of(context).size.width * 0.02,
        // ),
        Divider(),
        // Padding(
        //   padding: EdgeInsets.only(top: 12.0),
        //   child: FlatButton(
        //     hoverColor: Colors.transparent,
        //     splashColor: Colors.blue[900],
        //     child: Text(
        //       "Skills",
        //       style: GoogleFonts.domine(
        //         fontWeight: FontWeight.w600,
        //         fontSize: 20,
        //         color: Color(0xff173266),
        //       ),
        //     ),
        //     onPressed: () async {
        //       // if (isHomePage) {
        //       //   scrollController.animateTo(
        //       //     MediaQuery.of(context).size.height * 1.243,
        //       //     duration: Duration(
        //       //       seconds: 3,
        //       //     ),
        //       //     curve: Curves.easeOut,
        //       //   );
        //       // } else {
        //       Navigator.of(context).push(
        //         PageRouteBuilder(
        //             pageBuilder: (context, animation, anotherAnimation) {
        //               return AboutScreen();
        //             },
        //             transitionDuration: Duration(milliseconds: 2000),
        //             transitionsBuilder:
        //                 (context, animation, anotherAnimation, child) {
        //               animation = CurvedAnimation(
        //                   curve: Curves.linearToEaseOut, parent: animation);
        //               return Align(
        //                 child: FadeTransition(
        //                   // sizeFactor: animation,
        //                   child: child,
        //                   opacity: animation,
        //                   // axisAlignment: 1.0,
        //                 ),
        //               );
        //             }),
        //       );
        //       // }
        //     },
        //   ),
        // ),
        // // SizedBox(
        // //   width: MediaQuery.of(context).size.width * 0.02,
        // // ),
        // Divider(),
        Padding(
          padding: EdgeInsets.only(top: 12.0),
          child: FlatButton(
            hoverColor: Colors.transparent,
            splashColor: Colors.blue[900],
            child: Text(
              "Projects",
              style: GoogleFonts.domine(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: Color(0xff173266),
              ),
            ),
            onPressed: () {
              Navigator.of(context).push(
                PageRouteBuilder(
                  pageBuilder: (context, animation, anotherAnimation) {
                    return ProjectScreen();
                  },
                  transitionDuration: Duration(milliseconds: 1700),
                  transitionsBuilder:
                      (context, animation, anotherAnimation, child) {
                    animation = CurvedAnimation(
                        curve: Curves.easeOutSine, parent: animation);
                    return Align(
                      child: FadeTransition(
                        // sizeFactor: animation,
                        child: child,
                        opacity: animation,
                        // axisAlignment: 0.0,
                      ),
                    );
                  },
                ),
                // ProjectScreen.routeName
              );
            },
          ),
        ),
        // SizedBox(
        //   width: MediaQuery.of(context).size.width * 0.02,
        // ),
        Divider(),
        FlatButton(
          padding: EdgeInsets.only(top: 12.0),
          hoverColor: Colors.transparent,
          splashColor: Colors.blue[900],
          color: Colors.transparent,
          child: Text(
            "Resume",
            style: GoogleFonts.faustina(
              fontWeight: FontWeight.w600,
              fontSize: 24,
              color: Color(0xff173266),
            ),
          ),
          onPressed: () {
            Globals.openLink(
                "https://drive.google.com/file/d/1GTGLuEK-5l2B2nxEemUSMauEYQzOCYCs/view?usp=sharing");
          },
        ),
        Divider(),
        Container(
          height: 1000,
          child: socialMediaRow(),
          alignment: Alignment.bottomCenter,
        ),
        // Expanded(
        //   child: Align(
        //     alignment: Alignment.bottomCenter,
        //       child: socialMediaRow(),
        //     // child: Padding(
        //     //   padding: EdgeInsets.only(bottom: 10.0),
        //     // ),
        //   ),
        // ),
        Divider(),
      ],
    ),
  );
}