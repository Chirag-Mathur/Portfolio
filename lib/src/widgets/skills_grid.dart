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
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.05,
              top: MediaQuery.of(context).size.width * 0.01),
          child: Text(
            'My Skills',
            textAlign: TextAlign.left,
            style: ThemeProvider.themeOf(context).id == 'dark'
                ? GoogleFonts.robotoSlab(
                    fontSize: Globals.isLargeScreen(context) ? 45 : 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  )
                : GoogleFonts.robotoSlab(
                    fontSize: Globals.isLargeScreen(context) ? 45 : 25,
                    color: Color(0xff00305b),
                    fontWeight: FontWeight.w600),
            // Theme.of(context).primaryTextTheme.subtitle1
          ),
        ),
        Row(
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
                      Container(
                        height: MediaQuery.of(context).size.height * 0.27,
                        child: Text(
                          'Languages',
                          style: GoogleFonts.openSans(
                            fontSize: 33,
                            color: Theme.of(context)
                                .appBarTheme
                                .textTheme
                                .headline5
                                .color,
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.27,
                        child: Text(
                          'Tools',
                          style: GoogleFonts.openSans(
                            fontSize: 33,
                            color: Theme.of(context)
                                .appBarTheme
                                .textTheme
                                .headline5
                                .color,
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
      ],
    ),
  );
}

Widget skillsGrid(List<Map<String, String>> info, BuildContext context) {
  return Container(
    margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.03),
    height: MediaQuery.of(context).size.height * 0.3,
    width: MediaQuery.of(context).size.width * 0.5,
    child:
    Globals.isLargeScreen(context)?
        
        Row(
      children: [
        for (int i = 0; i < info.length; i++)
          Row(
            children: [
              column(info, context, i),
              SizedBox(
                width: 50,
              ),
            ],
          ),
        // ),
      ],
    ):GridView.builder(
          primary: false,//true,
          // physics: NeverScrollableScrollPhysics(),
          // scrollDirection: Axis.horizontal,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount:2,

            // crossAxisSpacing: 32,
          ),
          itemCount: info.length,
          shrinkWrap: true,
          itemBuilder: (_, i) {
            return column(info, context, i);
    },),
  );
  // );
}

Column column(List<Map<String, String>> info, BuildContext context, int i) {
  return Column(
    // mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        height: 100,
        width: 100,
        child: ClipPolygon(
          sides: 6,
//  borderRadius: 5.0, // Default 0.0 degrees
//  rotate: 90.0, // Default 0.0 degrees
          boxShadows: [
            PolygonBoxShadow(color: Colors.black, elevation: 2.0),
            PolygonBoxShadow(color: Colors.grey, elevation: 7.0),
            PolygonBoxShadow(color: Colors.grey[700], elevation: 2.3),
          ],
          child: Container(
            color: Colors.white,
            child: Image.asset(
              info[i]['image'],
              scale: 5,
              // fit: BoxFit.contain,
            ),
          ),
        ),
      ),
      Container(
        // width:115,
        padding: EdgeInsets.only(top: 12),
        // alignment: Alignment.center,
        child: Text(
          info[i]['name'],
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyText1,
          softWrap: false,
        ),
      ),
    ],
  );
}