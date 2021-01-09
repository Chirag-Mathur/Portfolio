import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_portfolio/src/info/globals.dart';
import 'package:my_portfolio/src/screens/AboutScreen.dart';
import 'package:my_portfolio/src/screens/ContactScreen.dart';

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
    leading: FittedBox(
      child: InkWell(
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
          ),
        ),
        onTap: () {
          Navigator.of(context).pushNamed(AboutScreen.routeName);
        },
      ),
    ),
    leadingWidth: 330,
    actions: [
      Padding(
        padding: EdgeInsets.only(top: 30.0, bottom: 25),
        child: InkWell(
          hoverColor: Colors.transparent,
          splashColor: Colors.transparent,
          child: Text(
            "About Me",
            style: Theme.of(context).appBarTheme.textTheme.headline5,
          ),
          onTap: () {
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
        padding: EdgeInsets.only(top: 30.0, bottom: 25),
        child: InkWell(
          hoverColor: Colors.transparent,
          splashColor: Colors.transparent,
          child: Text(
            "Skills",
            style: Theme.of(context).appBarTheme.textTheme.headline5,
          ),
          onTap: () async {
            if (isHomePage) {
              scrollController.animateTo(
                MediaQuery.of(context).size.height * 1.12,
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
                          child: child,
                          opacity: animation,
                        ),
                      );
                    },
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
        padding: const EdgeInsets.only(top: 30.0, bottom: 25),
        child: InkWell(
          hoverColor: Colors.transparent,
          splashColor: Colors.transparent,
          // ThemeProvider.themeOf(context).id == 'dark'
          //     ? Globals.backgroundColorLight
          //     : Globals.splashColorLight,
          child: Text(
            "Projects",
            style: Theme.of(context).appBarTheme.textTheme.headline5,
          ),
          onTap: () {
            scrollController.animateTo(
              MediaQuery.of(context).size.height * 2,
              duration: Duration(
                seconds: 3,
              ),
              curve: Curves.easeOut,
            );
          },
        ),
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width * 0.02,
      ),
      Padding(
        padding: EdgeInsets.only(top: 30.0, bottom: 25),
        child: InkWell(
          hoverColor: Colors.transparent,
          splashColor: Colors.transparent,
          child: Text(
            "Contact Me",
            style: Theme.of(context).appBarTheme.textTheme.headline5,
          ),
          onTap: () {
            return showDialog(
                context: context, builder: (context) => ContactScreen());
          },
        ),
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width * 0.02,
      ),
      Padding(
        padding: EdgeInsets.all(16.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.transparent,
            elevation: 10,
            animationDuration: Duration(milliseconds: 500),
            // elevation: 7,
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              side: BorderSide(
                width: 1.6,
                color: Colors.blue[900],
              ),
            ),
          ),
          child: Text(
            "Resume",
            style: Theme.of(context).appBarTheme.textTheme.headline5,
          ),
          onPressed: () {
            Globals.openLink(
                "https://www.dropbox.com/s/skwb40bo3vru0g9/Monik_resume.pdf?dl=0");
          },
        ),
      ),
    ],
  );
}
