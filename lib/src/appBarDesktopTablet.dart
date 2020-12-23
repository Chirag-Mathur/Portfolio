import 'package:flutter/material.dart';
import 'package:my_portfolio/src/info/globals.dart';
import 'package:my_portfolio/src/screens/AboutScreen.dart';
import 'package:my_portfolio/src/screens/ProjectScreen.dart';
import 'package:universal_html/html.dart';

Widget appBarDesktopTablet(
    BuildContext context,
    ScrollController scrollController,
    bool isHomePage,
    double fontsize,
    Color textColor) {
  return AppBar(
    automaticallyImplyLeading: false,
    toolbarHeight: 90,
    elevation: Theme.of(context).appBarTheme.elevation, //0,
    backgroundColor: Colors.transparent,
    leading: InkWell(
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(
            15,
          ),
        ),
      ),
      hoverColor: Colors.black12,
      child: Padding(
        padding: EdgeInsets.only(left: 12.0),
        child: Text(
          "Monikinderjit Singh",
          style: Theme.of(context).textTheme.headline1,
          //  TextStyle(
          //     fontFamily: 'TheRichJuliet',
          //     fontSize: 53,
          //     color: textColor,
          //     fontWeight: FontWeight.w600),
        ),
      ),
      onTap: () {
        Navigator.of(context).pushNamed(AboutScreen.routeName);
      },
    ),
    leadingWidth: 330,
    // title: LiteRollingSwitch(
    //   value: true,
    //   width: 100,
    // textOn: 'Dark',
    // textOff: 'Light',
    // // colorOn: Colors.greenAccent[700],
    // // colorOff: Colors.redAccent[700],
    // colorOff: Colors.blue[800],
    // colorOn: Colors.purple[400],
    // iconOn: Icons.nights_stay,
    // iconOff: Icons.wb_sunny,
    // textSize: 18.0,
    // onChanged: (bool state) {
    //   // AboutScreen.
    //   print('Current State of SWITCH IS: $state');
    // },
    // ),
    actions: [
      Padding(
        padding: EdgeInsets.only(top: 12.0),
        child: FlatButton(
          hoverColor: Colors.transparent,
          splashColor: Globals.backgroundColorLight,
          child: Text(
            "About Me",
            style: Theme.of(context).appBarTheme.textTheme.headline5,
            // GoogleFonts.domine(
            //   fontWeight: FontWeight.w600,
            //   fontSize: fontsize,
            //   color: textColor,
            // ),
          ),
          onPressed: () {
            if (isHomePage) {
              scrollController.animateTo(
                -MediaQuery.of(context).size.height,
                duration: Duration(
                  seconds: 5,
                ),
                curve: Curves.easeOut,
              );
            } else {
              Navigator.of(context).push(
                PageRouteBuilder(
                  pageBuilder: (context, animation, anotherAnimation) {
                    return AboutScreen();
                  },
                  // transitionDuration: Duration(milliseconds: 2000),
                  // transitionsBuilder:
                  //     (context, animation, anotherAnimation, child) {
                  //   animation = CurvedAnimation(
                  //       curve: Curves.easeOutSine, parent: animation);
                  //   return Align(
                  //     child: FadeTransition(
                  //       // sizeFactor: animation,
                  //       child: child,
                  //       opacity: animation,
                  //       // axisAlignment: 1.0,
                  //     ),
                  //   );
                  // },
                ),
              );
            }
          },
        ),
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width * 0.02,
      ),
      Padding(
        padding: EdgeInsets.only(top: 12.0),
        child: FlatButton(
          hoverColor: Colors.transparent,
          splashColor: Globals.splashColorLight,
          child: Text(
            "Skills",
            style: Theme.of(context).appBarTheme.textTheme.headline5,
            //  GoogleFonts.domine(
            //   fontWeight: FontWeight.w600,
            //   fontSize: fontsize,
            //   color: textColor,
            // ),
          ),
          onPressed: () async {
            if (isHomePage) {
              scrollController.animateTo(
                MediaQuery.of(context).size.height * 1.243,
                duration: Duration(
                  seconds: 3,
                ),
                curve: Curves.easeOut,
              );
            } else {
              Navigator.of(context)
                ..push(
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
                      }),
                );
            }
          },
        ),
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width * 0.02,
      ),
      Padding(
        padding: EdgeInsets.only(top: 12.0),
        child: FlatButton(
          hoverColor: Colors.transparent,
          splashColor: Colors.blue[900],
          child: Text(
            "Projects",
            style: Theme.of(context).appBarTheme.textTheme.headline5,
            //  GoogleFonts.domine(
            //   fontWeight: FontWeight.w600,
            //   fontSize: fontsize,
            //   color: textColor,
            // ),
          ),
          onPressed: () {
            Navigator.of(context).push(
              PageRouteBuilder(
                pageBuilder: (context, animation, anotherAnimation) {
                  return ProjectScreen();
                },
                // transitionDuration: Duration(milliseconds: 1700),
                // transitionsBuilder:
                //     (context, animation, anotherAnimation, child) {
                //   animation = CurvedAnimation(
                //       curve: Curves.easeOutSine, parent: animation);
                //   return Align(
                //     child: FadeTransition(
                //       // sizeFactor: animation,
                //       child: child,
                //       opacity: animation,
                //       // axisAlignment: 0.0,
                //     ),
                //   );
                // },
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
          hoverElevation: 10,
          // elevation: 7,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1.6,
              color: Colors.blue[900],
            ),
          ),
          // hoverColor: Colors.deepPurple,
          child: Text(
            "Resume",
            style: Theme.of(context).appBarTheme.textTheme.headline5,
            //  GoogleFonts.faustina(
            //   fontWeight: FontWeight.w600,
            //   fontSize: 28,
            //   color: textColor,
            // ),
          ),
          onPressed: () {
            Globals.openLink(
                "https://drive.google.com/file/d/1GTGLuEK-5l2B2nxEemUSMauEYQzOCYCs/view?usp=sharing");
          },
        ),
      ),
    ],
  );
}