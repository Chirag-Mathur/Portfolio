import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:my_portfolio/src/info/globals.dart';
import 'package:my_portfolio/src/widgets/socialMediaRow.dart';
import 'package:theme_provider/theme_provider.dart';

List<Widget> topAboutPageWidget(BuildContext context, var myImage1) {
  return [
    Container(
      // color: Colors.green,
      width: Globals.isLargeScreen(context)
          ? MediaQuery.of(context).size.width * 0.7
          : double.maxFinite,
      height: Globals.isLargeScreen(context)
          ? MediaQuery.of(context).size.height * 0.8
          : MediaQuery.of(context).size.height * 0.46,
      child: Padding(
        padding: EdgeInsets.only(
            left:
                //  Globals.isLargeScreen(context)
                //     ?
                MediaQuery.of(context).size.width * 0.1
            // : Globals.isSmallScreen(context)
            // ? MediaQuery.of(context).size.width * 0.001
            // : MediaQuery.of(context).size.width * 0.01,
            ),
        child: Column(
          mainAxisAlignment: (Globals.isLargeScreen(context) &&
                  !Globals.isMediumScreen(context))
              ? MainAxisAlignment.center
              : MainAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  child: Row(
                    children: [
                      FittedBox(
                        child: Text(
                          "Hi",
                          semanticsLabel: 'Monik intro',
                          style: ThemeProvider.themeOf(context).id == 'dark'
                              ? GoogleFonts.robotoSlab(
                                  fontSize: Globals.isLargeScreen(context)
                                      ? MediaQuery.of(context)
                                              .size
                                              .aspectRatio *
                                          18.857
                                      : Globals.isSmallScreen(context)
                                          ? 25
                                          : 30,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff00adb5),
                                )
                              : GoogleFonts.robotoSlab(
                                  fontSize: Globals.isLargeScreen(context)
                                      ? MediaQuery.of(context)
                                              .size
                                              .aspectRatio *
                                          18.857
                                      : Globals.isSmallScreen(context)
                                          ? 25
                                          : 40,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff00305b),
                                ),
                        ),
                      ),
                      FittedBox(
                        child: Image.network(
                          "https://media.giphy.com/media/Vhd10uVrDjMhAG7IyV/giphy.gif",
                          // scale: 0.5,
                          width: Globals.isLargeScreen(context)
                              ? 44
                              : Globals.isSmallScreen(context)
                                  ? 23
                                  : 37,

                          height: Globals.isLargeScreen(context)
                              ? 120
                              : Globals.isSmallScreen(context)
                                  ? 60
                                  : 110,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      FittedBox(
                        child: Text(
                          ", I'm Monik.",
                          semanticsLabel: 'Monik intro',
                          style: ThemeProvider.themeOf(context).id == 'dark'
                              ? GoogleFonts.robotoSlab(
                                  fontSize: Globals.isLargeScreen(context)
                                      ? MediaQuery.of(context)
                                              .size
                                              .aspectRatio *
                                          18.857 // 35
                                      : Globals.isSmallScreen(context)
                                          ? 25
                                          : 30,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff00adb5),
                                )
                              : GoogleFonts.robotoSlab(
                                  fontSize: Globals.isLargeScreen(context)
                                      ? MediaQuery.of(context)
                                              .size
                                              .aspectRatio *
                                          18.857
                                      : Globals.isSmallScreen(context)
                                          ? 25
                                          : 40,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff00305b),
                                ),
                        ),
                      ),
                    ],
                  ),
                ),
                if (!(Globals.isLargeScreen(context)))
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.015,
                  ),
                Text(
                  'Building apps, web apps and Learning new technology',
                  style: ThemeProvider.themeOf(context).id == 'dark'
                      ? GoogleFonts.alef(
                          fontSize: Globals.isLargeScreen(context)
                              ? MediaQuery.of(context).size.aspectRatio *
                                  29.094 //54
                              : Globals.isSmallScreen(context)
                                  ? 23
                                  : 46,
                          fontWeight: FontWeight.w600,
                          color: Color(
                              0xffEEEEEE) //Color(0xff001b34), //Colors.black54,
                          )
                      : GoogleFonts.alef(
                          fontSize: Globals.isLargeScreen(context)
                              ? MediaQuery.of(context).size.aspectRatio *
                                  29.094 //54
                              : Globals.isSmallScreen(context)
                                  ? 23
                                  : 46,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff001b34), //Colors.black54,
                        ),
                ),
                SizedBox(
                  height: (Globals.isLargeScreen(context) &&
                          !Globals.isMediumScreen(context))
                      ? MediaQuery.of(context).size.height * 0.05
                      : MediaQuery.of(context).size.height * 0.04,
                ),
                Container(
                  color: Colors.transparent,
                  height: Globals.isLargeScreen(context) ? 100 : 55,
                  child: Builder(
                    builder: (ctx) => TypewriterAnimatedTextKit(
                      speed: Duration(milliseconds: 150),
                      text: [
                        "Love Exploring technologies.",
                        "Mostly Debugging code than writing :).",
                        "Built with Flutter Web.",
                      ],
                      textStyle: GoogleFonts.lora(
                            color: Colors.pink, // Colors.blueAccent[700],
                            fontSize: Globals.isLargeScreen(context)
                                ? MediaQuery.of(context).size.aspectRatio *
                                    21.55 // 40
                                : Globals.isSmallScreen(context)
                                    ? 20
                                    : 35,
                          ) ??
                          "",
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
              ],
            ),
            if (Globals.isSmallScreen(context))
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: socialMediaRow(context, 33),
                ),
              ),
          ],
        ),
      ),
    ),
    Container(
      width: MediaQuery.of(context).size.width * 0.3,
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: Globals.isSmallScreen(context)
            ? MainAxisAlignment.spaceEvenly
            : MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Globals.isSmallScreen(context)
                    ? Radius.circular(7)
                    : Radius.circular(10),
              ),
              color: Color(0xff173266),
            ),
            child: myImage1,
          ),
          SizedBox(
            height: (Globals.isLargeScreen(context) &&
                    !Globals.isMediumScreen(context))
                ? MediaQuery.of(context).size.height * 0.04
                : MediaQuery.of(context).size.height * 0.03,
          ),
          if (Globals.isLargeScreen(context))
            Container(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.045),
              alignment: Alignment.centerLeft,
              child: socialMediaRow(context, 39),
            ),
        ],
      ),
    ),
    if (Globals.isLargeScreen(context))
      SizedBox(height: MediaQuery.of(context).size.height * 0.01),
  ];
}
