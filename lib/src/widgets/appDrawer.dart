import 'package:flutter/material.dart';
import 'package:my_portfolio/src/info/globals.dart';
import 'package:my_portfolio/src/widgets/LiteSwitch.dart';
import 'package:my_portfolio/src/widgets/socialMediaRow.dart';
import 'package:theme_provider/theme_provider.dart';

Widget appDrawer(
    BuildContext context, ScrollController scrollController, bool isDark) {
  return Container(
    width: 200,
    height: MediaQuery.of(context).size.height * 0.85,
    color: Theme.of(context).backgroundColor, //Colors.transparent,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Container(
        //   alignment: Alignment.centerRight,
        //   child: RollSwitch(
        //     value: true,
        //     width: 70,
        //     textOn: 'Dark',
        //     textOff: 'Light',
        //     colorOff: Color(0xff204690), // Colors.blue[800],
        //     colorOn: Colors.purple[400],
        //     iconOn: Icons.nights_stay,
        //     iconOff: Icons.wb_sunny,
        //     textSize: 18.0,
        //     onChanged: (bool state) {
        //       // if (!isDark) {
        //       //   setState(() {
        //       //     isDark = true;
        //       //   });
        //       //   return;
        //       // }
        //       ThemeProvider.controllerOf(context).nextTheme();
        //     },
        //   ),
        // ),

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
        // SizedBox(
        //   width: MediaQuery.of(context).size.width * 0.02,
        // ),
        Divider(),
        // Padding(
        // padding: EdgeInsets.only(top: 12.0),
        // child:
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
              MediaQuery.of(context).size.height * 1.33,
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
              MediaQuery.of(context).size.height * 3,
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
        Divider(),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.02,
        ),
        Container(
          height: 1000,
          child: socialMediaRowDrawer(context),
          alignment: Alignment.bottomCenter,
        ),

        Divider(),
      ],
    ),
  );
}
