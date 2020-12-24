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
      width: MediaQuery.of(context).size.width * 0.7,
      height: MediaQuery.of(context).size.height * 0.8,
      child: Padding(
        padding: EdgeInsets.only(
            left: Globals.isLargeScreen(context)
                ? MediaQuery.of(context).size.width * 0.1
                : Globals.isSmallScreen(context)
                    ? MediaQuery.of(context).size.width * 0.001
                    : MediaQuery.of(context).size.width * 0.01),
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
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Row(
                  children: [
                    Text(
                      "Hi",
                      semanticsLabel: 'Monik intro',
                      style: ThemeProvider.themeOf(context).id == 'dark'
                          ? GoogleFonts.robotoSlab(
                              fontSize: Globals.isLargeScreen(context)
                                  ? 40
                                  : Globals.isSmallScreen(context)
                                      ? 25
                                      : 30,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff00adb5),
                            )
                          : GoogleFonts.robotoSlab(
                              fontSize: Globals.isLargeScreen(context)
                                  ? 40
                                  : Globals.isSmallScreen(context)
                                      ? 25
                                      : 40,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff00305b),
                            ),
                      // GoogleFonts.robotoSlab(
                      //   fontSize: Globals.isLargeScreen(context)
                      //       ? 40
                      //       : Globals.isSmallScreen(context)
                      //           ? 25
                      //           : 30,
                      //   fontWeight: FontWeight.w600,
                      //   color: Color(0xff00adb5),
                      // ),
                    ),
                    Image.network(
                      "https://media.giphy.com/media/Vhd10uVrDjMhAG7IyV/giphy.gif",
                      // scale: 0.5,
                      width: Globals.isLargeScreen(context)
                          ? 47
                          : Globals.isSmallScreen(context)
                              ? 19
                              : 37,

                      height: Globals.isLargeScreen(context)
                          ? 125
                          : Globals.isSmallScreen(context)
                              ? 50
                              : 110,
                      fit: BoxFit.fitHeight,
                    ),
                    Text(
                      ", I'm Monik.",
                      semanticsLabel: 'Monik intro',
                      style: ThemeProvider.themeOf(context).id == 'dark'
                          ? GoogleFonts.robotoSlab(
                              fontSize: Globals.isLargeScreen(context)
                                  ? 40
                                  : Globals.isSmallScreen(context)
                                      ? 25
                                      : 30,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff00adb5),
                            )
                          : GoogleFonts.robotoSlab(
                              fontSize: Globals.isLargeScreen(context)
                                  ? 40
                                  : Globals.isSmallScreen(context)
                                      ? 25
                                      : 40,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff00305b),
                            ),
                    ),
                  ],
                ),
                if (!(Globals.isLargeScreen(context) &&
                    !Globals.isMediumScreen(context)))
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                Text(
                  'Building apps, web apps and Learning new technology',
                  style: ThemeProvider.themeOf(context).id == 'dark'
                      ? GoogleFonts.alef(
                          fontSize: Globals.isLargeScreen(context) &&
                                  !Globals.isMediumScreen(context)
                              ? 60
                              : Globals.isSmallScreen(context)
                                  ? 23
                                  : 46,
                          fontWeight: FontWeight.w600,
                          color: Color(
                              0xffEEEEEE) //Color(0xff001b34), //Colors.black54,
                          )
                      : GoogleFonts.alef(
                          fontSize: Globals.isLargeScreen(context) &&
                                  !Globals.isMediumScreen(context)
                              ? 60
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
                      : MediaQuery.of(context).size.height * 0.03,
                ),
                Builder(
                  builder: (ctx) => Container(
                    color: Colors.transparent,
                    height: Globals.isLargeScreen(context)
                        ? 100
                        : Globals.isSmallScreen(context)
                            ? 80
                            : 85,
                    child: TypewriterAnimatedTextKit(
                      speed: Duration(milliseconds: 150),
                      text: [
                        "Love Exploring technologies.",
                        "Mostly Debugging code than writing :).",
                        "Built with Flutter Web.",
                      ],
                      textStyle: GoogleFonts.lora(
                            color: Colors.pink, // Colors.blueAccent[700],
                            fontSize: Globals.isLargeScreen(context)
                                ? 40
                                : Globals.isSmallScreen(context)
                                    ? 20
                                    : 35,
                          ) ??
                          "",
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
                // if (Globals.isLargeScreen(context) &&
                //     !Globals.isMediumScreen(context))
                //   SizedBox(
                //     height: Globals.isLargeScreen(context)
                //         ? MediaQuery.of(context).size.height * 0.01
                //         : MediaQuery.of(context).size.height * 0.001,
                //   ),
                // Container(
                //   alignment: Alignment.center,
                //   width: MediaQuery.of(context).size.width * 0.8,
                //   height: MediaQuery.of(context).size.height * 0.1,
                //   child: RotateAnimatedTextKit(
                //     repeatForever: true,
                //     text: ["DISCIPLINED", "OPTIMISTIC", "LEARNER", "LISTENER"],
                //     textStyle: GoogleFonts.orbitron(
                //         fontSize: Globals.isLargeScreen(context) ? 40.0 : 25),
                //     textAlign: TextAlign.center,
                //   ),
                // ),
              ],
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
            ? MainAxisAlignment.spaceAround
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
            // height: Globals.isSmallScreen(context)?300:450,
            // width: Globals.isSmallScreen(context)?500:200,
            child: myImage1,
            margin: EdgeInsets.only(
                bottom: Globals.isSmallScreen(context)
                    ? (MediaQuery.of(context).size.height * 0.032)
                    : 0),
          ),
          SizedBox(
            height: (Globals.isLargeScreen(context) &&
                    !Globals.isMediumScreen(context))
                ? MediaQuery.of(context).size.height * 0.04
                : MediaQuery.of(context).size.height * 0.03,
          ),
          Padding(
            padding:  EdgeInsets.only(left:MediaQuery.of(context).size.width*0.06),
            child: socialMediaRow(context),
          ),
        ],
      ),
    ),
    if (Globals.isLargeScreen(context) && !Globals.isMediumScreen(context))
      SizedBox(height: MediaQuery.of(context).size.height * 0.01),
  ];
}
