import 'package:flutter/material.dart';
import 'package:my_portfolio/src/widgets/appBarDesktopTablet.dart';
import 'package:my_portfolio/src/widgets/appBarMobile.dart';
import 'package:my_portfolio/src/info/globals.dart';

Widget appBarWidget(BuildContext context, ScrollController scrollController,
    bool isHomePage, GlobalKey<ScaffoldState> scaffoldKey) {
  double fontsize = 25;
  Color textColor = Color(0xff173266);
  if (Globals.isLargeScreen(context))
    return appBarDesktopTablet(
      context,
      scrollController,
      isHomePage,
      fontsize,
      textColor,
    );

  return appBarMobile(
      context, scrollController, scaffoldKey, isHomePage, fontsize, textColor);
}
