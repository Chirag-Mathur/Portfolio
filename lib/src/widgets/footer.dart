import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:theme_provider/theme_provider.dart';

// import '../widgets/socialMediaRow.dart';

Widget footer(BuildContext context) {
  return Align(
    alignment: Alignment.bottomCenter, //FractionalOffset.bottomCenter,
    child: Padding(
      padding: EdgeInsets.only(bottom: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Divider(
            thickness: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // socialMediaRow(),
              Spacer(),
              Text(
                "Built with",
                style: GoogleFonts.robotoSlab(
                  fontSize: 23,
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
                color: ThemeProvider.themeOf(context).id == 'dark'? Colors.pink:Colors.blue[900],
                size: 25,
              ),
              Padding(
                padding: EdgeInsets.only(right: 18.0),
                child: Text(
                  " by Monikinderjit Singh",
                  style: 
                  GoogleFonts.robotoSlab(
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                    color:
                    // ThemeProvider.themeOf(context).data.appBarTheme.textTheme.headline5.color 
                    ThemeProvider.themeOf(context).id == 'dark'
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
