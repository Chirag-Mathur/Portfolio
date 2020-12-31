import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/src/info/globals.dart';
import 'package:polygon_clipper/polygon_clipper.dart';
import 'package:theme_provider/theme_provider.dart';

Widget getSkillsGrid(BuildContext context) {
  return Container(
    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.23),
    height: MediaQuery.of(context).size.height,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: Globals.isLargeScreen(context)
          ? MainAxisAlignment.spaceBetween
          : MainAxisAlignment.start,
      children: [
        FittedBox(
          child: Container(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.05,
                top: MediaQuery.of(context).size.width * 0.01,
                bottom: Globals.isLargeScreen(context)
                    ? 20
                    : MediaQuery.of(context).size.height * 0.009),
            child: Text(
              'My Skills',
              textAlign: TextAlign.left,
              style: ThemeProvider.themeOf(context).id == 'dark'
                  ? GoogleFonts.robotoSlab(
                      fontSize: Globals.isLargeScreen(context)
                          ? MediaQuery.of(context).size.aspectRatio * 24.25
                          : 22,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    )
                  : GoogleFonts.robotoSlab(
                      fontSize: Globals.isLargeScreen(context)
                          ? MediaQuery.of(context).size.aspectRatio * 24.25
                          : 22,
                      color: Color(0xff00305b),
                      fontWeight: FontWeight.w600),
              // Theme.of(context).primaryTextTheme.subtitle1
            ),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.2,
                  height: MediaQuery.of(context).size.height * 0.6,
                  // decoration: BoxDecoration(
                  //   border: Border(
                  //     right: BorderSide(
                  //       width: 1.5,
                  //       color: Colors.white,
                  //     ),
                  //   ),
                  // ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FittedBox(
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.27,
                          child: Text(
                            'Languages',
                            style: GoogleFonts.openSans(
                              fontSize: Globals.isLargeScreen(context)
                                  ? MediaQuery.of(context).size.aspectRatio *
                                      17.78
                                  : MediaQuery.of(context).size.aspectRatio *
                                      26,
                              color: Theme.of(context)
                                  .appBarTheme
                                  .textTheme
                                  .headline5
                                  .color,
                            ),
                          ),
                        ),
                      ),
                      FittedBox(
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.27,
                          child: Text(
                            'Tools',
                            style: GoogleFonts.openSans(
                              fontSize: Globals.isLargeScreen(context)
                                  ? MediaQuery.of(context).size.aspectRatio *
                                      17.78
                                  : MediaQuery.of(context).size.aspectRatio *
                                      28,
                              color: Theme.of(context)
                                  .appBarTheme
                                  .textTheme
                                  .headline5
                                  .color,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // SizedBox(width: 200,),
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: skillsGrid(Globals.langAndFramewks2, context),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: skillsGrid(Globals.tools2, context),
                ),
              ],
            ),
          ],
        ),
        if (Globals.isLargeScreen(context))
          SizedBox(height: MediaQuery.of(context).size.height * 0.5)
      ],
    ),
  );
}

Widget skillsGrid(List<Map<String, String>> info, BuildContext context) {
  return Container(
    margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.03),
    height: MediaQuery.of(context).size.height * 0.3,
    width: MediaQuery.of(context).size.width * 0.8,
    child: Globals.isLargeScreen(context)
        ? Row(
            children: [
              for (int i = 0; i < info.length; i++)
                Row(
                  children: [
                    column(info, context, i),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.03,
                    ),
                  ],
                ),
              // ),
            ],
          )
        : GridView.builder(
            primary: false,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 20,
              childAspectRatio: 0.8,
              crossAxisSpacing: 5,
            ),
            itemCount: info.length,
            shrinkWrap: true,
            itemBuilder: (_, i) {
              return column(info, context, i);
            },
          ),
  );
}

Widget column(List<Map<String, String>> info, BuildContext context, int i) {
  return FittedBox(
    child: Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: MediaQuery.of(context).size.aspectRatio * 70,
          width: MediaQuery.of(context).size.aspectRatio * 70,
          child: ClipPolygon(
            sides: 6,
            boxShadows: [
              PolygonBoxShadow(color: Colors.black, elevation: 2.0),
              PolygonBoxShadow(color: Colors.grey, elevation: 7.0),
              PolygonBoxShadow(color: Colors.grey[700], elevation: 2.3),
            ],
            child: Container(
              color: Colors.white,
              child: Image.asset(
                info[i]['image'],
                scale: Globals.isLargeScreen(context) ? 4 : 10,
                // fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        Container(
          // width:115,
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
          // alignment: Alignment.center,
          child: FittedBox(
            child: Text(
              info[i]['name'],
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Theme.of(context).textTheme.bodyText1.color,
                fontSize: Globals.isLargeScreen(context)
                    ? MediaQuery.of(context).size.aspectRatio * 17.78
                    : MediaQuery.of(context).size.aspectRatio * 23,
              ),
              softWrap: false,
            ),
          ),
        ),
      ],
    ),
  );
}
