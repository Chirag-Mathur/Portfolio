import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../screens/AboutScreen.dart';

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
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          color: Colors.transparent,
          child: GestureDetector(
            onTap: () {
              AboutScreen.openLink(infoMapList[index]['projectLink']);
            },
            onLongPress: () {},
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
                            style: GoogleFonts.aladin(
                                color: Colors.white,
                                fontSize: 27,
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
              AboutScreen.openLink(
                  "https://github.com/Monik09?tab=repositories");
            },
          ),
        ),
      );
    },
  );
}
