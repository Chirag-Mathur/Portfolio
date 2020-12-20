import 'package:flutter/material.dart';
import '../../info/globals.dart';

Widget appBarMobile(BuildContext context, ScrollController scrollController,
    bool isHomePage, double fontsize, Color textColor) {
  return AppBar(
    automaticallyImplyLeading: false,
    toolbarHeight: 90,
    elevation: 0,
    backgroundColor: Colors.transparent,
    leading: IconButton(
      icon: Icon(
        Icons.menu,
        color: textColor,
        size: 25,
      ),
      onPressed: () {
        // Globals.scaffoldKey.currentState.openDrawer();
      },
    ),
    actions: [
      FlatButton(
        onPressed: () {},
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        child: Text(
          "Monikinderjit Singh",
          style: TextStyle(
              fontFamily: 'TheRichJuliet',
              fontSize: 20,
              color: textColor,
              fontWeight: FontWeight.w600),
        ),
      ),
    ],
  );
}
