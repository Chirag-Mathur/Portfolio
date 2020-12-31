import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/src/info/globals.dart';
import 'package:my_portfolio/src/screens/AboutScreen.dart';
import 'package:my_portfolio/src/screens/Timeline.dart';
import 'package:theme_provider/theme_provider.dart';

Widget projectsCardWidget(
    BuildContext context, int index, bool isHovering, bool isNextPage) {
  return Card(
    borderOnForeground: false,
    elevation: !isHovering ? 10 : 10,
    shadowColor: ThemeProvider.themeOf(context).id == 'dark'
        ? Colors.grey
        : Colors.black,
    child: Builder(
      builder: (context) => CustomPaint(
        painter: CardDesignPainter(context),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FittedBox(
              child: Text(
                Globals.projectsList[!isNextPage ? index : index + 3 + 1]
                    ['title'],
                style: GoogleFonts.robotoMono(
                  fontSize: Globals.isLargeScreen(context) ? 19.5 : 16,
                  color: Colors.white, // Color(0xff26ABBF)
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            // Divider(color: Colors.grey),
            Container(
              padding: EdgeInsets.all(Globals.isLargeScreen(context) ? 12 : 8),
              child: Text(
                Globals.projectsList[!isNextPage ? index : index + 3 + 1]
                    ['description'],
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: ThemeProvider.themeOf(context).id == 'dark'
                      ? Color(0xff2F2F31) //Colors.grey[600]
                      : Color(0xff001b34),
                  fontSize: Globals.isLargeScreen(context) ? 17.5 : 14,
                ),
                maxLines: 4,
                softWrap: true,
              ),
            ),
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 2.0),
                  child: FittedBox(
                    child: Text(
                      Globals.projectsList[!isNextPage ? index : index + 3 + 1]
                          ['startedIn'],
                      style: GoogleFonts.robotoSlab(
                        fontSize: Globals.isLargeScreen(context) ? 14 : 11.5,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ),
    color: ThemeProvider.themeOf(context).id == 'dark'
        ? isHovering
            ? Colors.white
            : Color(0xffEDEAE0) //Color(0xffF5F5DC)// Colors.white70
        : Colors.white,
  );
}

Widget projectGridView(
    BuildContext context, List<Map<String, dynamic>> infoMapList) {
  return GridView.builder(
    shrinkWrap: false,
    primary: false,
    keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
    // physics: NeverScrollableScrollPhysics(),
    itemCount: infoMapList.length + 1,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3,
      childAspectRatio: 1.88,
      mainAxisSpacing: 10,
      crossAxisSpacing: 15,
    ),
    itemBuilder: (ctx, index) {
      if (index < 5)
        return Container(
          height: MediaQuery.of(context).size.width * 0.173,
          width: MediaQuery.of(context).size.width * 0.32,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
            color: Colors.transparent,
          ),
          child: Card(
            elevation: 10.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            color: Colors.blue[800],
            child: RaisedButton(
              color: Colors.transparent,
              // hoverColor: Colors.transparent,
              splashColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              focusElevation: 30,
              elevation: 8,
              hoverElevation: 45,
              animationDuration: Duration(seconds: 1),
              onPressed: () {
                infoMapList[index]['projectLink'] != null
                    ? Globals.openLink(infoMapList[index]['projectLink'])
                    : Navigator.of(context).pushNamed(AboutScreen.routeName);
              },
              onLongPress: () {},
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.057,
                    alignment: Alignment.center,
                    child: Text(
                      infoMapList[index]['title'],
                      style: GoogleFonts.openSans(
                          color: Colors.white, fontSize: 30),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Divider(
                    color: Colors.white10,
                    thickness: 2,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.128,
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.02),
                    child: Text(
                      infoMapList[index]['description'],
                      style: GoogleFonts.openSans(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * 0.02),
                    child: Text(
                      infoMapList[index]['startedIn'],
                      textAlign: TextAlign.right,
                      style: GoogleFonts.orienta(
                        color: Colors.white60,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.white70,
                    thickness: 1,
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.139,
                          height: MediaQuery.of(context).size.width * 0.09,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                            ),
                          ),
                          child: Text(
                            "Tech Used :-",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.alef(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Flexible(
                          child: Container(
                            // width: MediaQuery.of(context).size.width * 0.123,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                            child: GridView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount:
                                    infoMapList[index]['techUsed'].length,
                                childAspectRatio: 7.4 /
                                    infoMapList[index]['techUsed']
                                        .length, // 3.7,//2.72
                              ),
                              itemCount: infoMapList[index]['techUsed'].length,
                              itemBuilder: (ctx, i) {
                                return Image.asset(
                                  infoMapList[index]['techUsed'][i],
                                  fit: BoxFit.fitHeight,
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      return Container(
        height: MediaQuery.of(context).size.width * 0.17,
        width: MediaQuery.of(context).size.width * 0.32,
        color: Colors.blue[900],
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          color: Colors.blue[900],
          child: FlatButton(
            color: Colors.blue[900],
            child: Text(
              "More Projects",
              style: GoogleFonts.oswald(
                fontWeight: FontWeight.w400,
                fontSize: 50,
                color: Colors.blue,
              ),
            ),
            onPressed: () {
              Globals.openLink("https://github.com/Monik09?tab=repositories");
            },
          ),
        ),
      );
    },
  );
}
