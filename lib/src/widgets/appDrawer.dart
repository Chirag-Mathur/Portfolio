import 'package:flutter/material.dart';
import 'package:my_portfolio/src/info/globals.dart';
import 'package:my_portfolio/src/widgets/LiteSwitch.dart';
import 'package:my_portfolio/src/widgets/socialMediaRow.dart';
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
          child: FlatButton(
            splashColor: ThemeProvider.themeOf(context).id == 'dark'
                ? Globals.backgroundColorLight
                : Globals.splashColorLight,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(70),
              ),
            ),
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
            onPressed: () {
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
        FlatButton(
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
          onPressed: () async {
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
        FlatButton(
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
          onPressed: () {
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
        FlatButton(
          padding: EdgeInsets.only(top: 12.0),
          splashColor: ThemeProvider.themeOf(context).id == 'dark'
              ? Globals.backgroundColorLight
              : Globals.splashColorLight,
          color: Colors.transparent,
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
                "https://drive.google.com/file/d/1GTGLuEK-5l2B2nxEemUSMauEYQzOCYCs/view?usp=sharing");
          },
        ),
      ],
    ),
  );
}
