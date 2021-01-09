import 'package:flutter/material.dart';
import 'package:my_portfolio/src/info/globals.dart';
import 'package:my_portfolio/src/screens/ContactScreen.dart';
import 'package:theme_provider/theme_provider.dart';

Widget appDrawer(
    BuildContext context, ScrollController scrollController, bool isDark) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.38,
    height: MediaQuery.of(context).size.height * 0.85,
    color: Theme.of(context).backgroundColor, //Colors.transparent,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 12.0),
          child: InkWell(
            splashColor: ThemeProvider.themeOf(context).id == 'dark'
                ? Globals.backgroundColorLight
                : Globals.splashColorLight,
            child: Text(
              "About Me",
              style: TextStyle(
                fontFamily: Theme.of(context)
                    .appBarTheme
                    .textTheme
                    .headline5
                    .fontFamily,
                fontSize: 19,
                color: Theme.of(context).appBarTheme.textTheme.headline5.color,
              ),
            ),
            onTap: () {
              Navigator.of(context).pop(context);
              // if (isHomePage) {
              scrollController.animateTo(
                -MediaQuery.of(context).size.height,
                duration: Duration(
                  seconds: 5,
                ),
                curve: Curves.easeOut,
              );
            },
          ),
        ),
        Divider(),
        InkWell(
          splashColor: ThemeProvider.themeOf(context).id == 'dark'
              ? Globals.backgroundColorLight
              : Globals.splashColorLight,
          child: Text(
            "Skills",
            style: TextStyle(
              fontFamily:
                  Theme.of(context).appBarTheme.textTheme.headline5.fontFamily,
              fontSize: 19,
              color: Theme.of(context).appBarTheme.textTheme.headline5.color,
            ),
          ),
          onTap: () async {
            Navigator.of(context).pop(context);
            scrollController.animateTo(
              MediaQuery.of(context).size.height * 1.1,
              duration: Duration(
                seconds: 3,
              ),
              curve: Curves.easeOut,
            );
          },
        ),
        Divider(),
        InkWell(
          splashColor: ThemeProvider.themeOf(context).id == 'dark'
              ? Globals.backgroundColorLight
              : Globals.splashColorLight,
          child: Text(
            "Projects",
            style: TextStyle(
              fontFamily:
                  Theme.of(context).appBarTheme.textTheme.headline5.fontFamily,
              fontSize: 19,
              color: Theme.of(context).appBarTheme.textTheme.headline5.color,
            ),
          ),
          onTap: () {
            Navigator.of(context).pop(context);
            // if (isHomePage) {
            scrollController.animateTo(
              MediaQuery.of(context).size.height * 1.78,
              duration: Duration(
                seconds: 5,
              ),
              curve: Curves.easeOut,
            );
          },
        ),
        Divider(),
        InkWell(
          splashColor: ThemeProvider.themeOf(context).id == 'dark'
              ? Globals.backgroundColorLight
              : Globals.splashColorLight,
          child: Text(
            "Contact Me",
            style: TextStyle(
              fontFamily:
                  Theme.of(context).appBarTheme.textTheme.headline5.fontFamily,
              fontSize: 19,
              color: Theme.of(context).appBarTheme.textTheme.headline5.color,
            ),
          ),
          onTap: () {
            Navigator.of(context).pop(context);
            showDialog(context: context, builder: (context) => ContactScreen());
          },
        ),
        Divider(),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.transparent,
            // splashColor: ThemeProvider.themeOf(context).id == 'dark'
            //     ? Globals.backgroundColorLight
            //     : Globals.splashColorLight,
            shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(3),
                ),
                side: BorderSide(color: Colors.blue[900], width: 0.8)),
          ),
          child: Text(
            "Resume",
            style: TextStyle(
              fontFamily:
                  Theme.of(context).appBarTheme.textTheme.headline5.fontFamily,
              fontSize: 20,
              color: Theme.of(context).appBarTheme.textTheme.headline5.color,
            ),
          ),
          onPressed: () {
            Globals.openLink(
                "https://www.dropbox.com/s/skwb40bo3vru0g9/Monik_resume.pdf?dl=0");
          },
        ),
      ],
    ),
  );
}
