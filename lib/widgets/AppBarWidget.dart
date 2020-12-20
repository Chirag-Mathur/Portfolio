import 'package:flutter/material.dart';

import './desktop&Tablet/appBarDesktopTablet.dart';
import './mobile/appBarMobile.dart';
import '../info/globals.dart';

Widget appBarWidget(
    BuildContext context, ScrollController scrollController, bool isHomePage) {
  double fontsize = 25;
  Color textColor = Color(0xff173266);
  if (Globals.isLargeScreen(context))
    return appBarDesktopTablet(
        context, scrollController, isHomePage, fontsize, textColor);
  else
    return appBarMobile(
        context, scrollController, isHomePage, fontsize, textColor);
}
