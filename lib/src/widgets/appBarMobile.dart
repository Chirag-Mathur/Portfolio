import 'package:flutter/material.dart';
import 'package:my_portfolio/src/info/globals.dart';
import 'package:theme_provider/theme_provider.dart';

Widget appBarMobile(
    BuildContext context,
    ScrollController scrollController,
    GlobalKey<ScaffoldState> scaffoldKey,
    bool isHomePage,
    double fontsize,
    Color textColor) {
  return AppBar(
    automaticallyImplyLeading: false,
    elevation: 0,
    backgroundColor: Colors.transparent,
    leading: IconButton(
      icon: Icon(
        Icons.menu,
        color:Theme.of(context).appBarTheme.textTheme.headline5.color,
        size: 25,
      ),
      onPressed: () {
        scaffoldKey.currentState.openDrawer();
      },
    ),
    actions: [
      FittedBox(
              child: FlatButton(
          onPressed: () {},
          hoverColor: Colors.transparent,
          splashColor: Colors.transparent,
          child: Text(
            "Monikinderjit Singh",
            style: TextStyle(
              fontFamily: 'TheRichJuliet',
              fontSize: Globals.isLargeScreen(context)?30:26,
              color: Theme.of(context).textTheme.headline1.color,
              fontWeight:ThemeProvider.themeOf(context).id=='dark'? FontWeight.w400:FontWeight.w600,
            ),
          ),
        ),
      ),
    ],
  );
}
