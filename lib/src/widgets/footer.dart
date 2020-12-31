import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/src/info/globals.dart';
import 'package:theme_provider/theme_provider.dart';

Widget footer(BuildContext context) {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Padding(
      padding: Globals.isLargeScreen(context)
          ? EdgeInsets.only(bottom: 10.0)
          : EdgeInsets.only(bottom: 2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Divider(
            thickness: 1,
          ),
          FittedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Built with",
                  style: GoogleFonts.robotoSlab(
                    fontSize: Globals.isLargeScreen(context) ? 23 : 17,
                    fontWeight: FontWeight.w500,
                    color:
                        // ThemeProvider.themeOf(context).data.appBarTheme.textTheme.headline5.color
                        ThemeProvider.themeOf(context).id == 'dark'
                            ? Colors.white
                            : Colors.black,
                  ),
                ),
                Icon(
                  Icons.favorite,
                  color: ThemeProvider.themeOf(context).id == 'dark'
                      ? Colors.pink
                      : Colors.blue[900],
                  size: Globals.isLargeScreen(context) ? 25 : 19,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 18.0),
                  child: Text(
                    " by Monikinderjit Singh",
                    style: GoogleFonts.robotoSlab(
                      fontSize: Globals.isLargeScreen(context) ? 23 : 17,
                      fontWeight: FontWeight.w500,
                      color: ThemeProvider.themeOf(context).id == 'dark'
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
