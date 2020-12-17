import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../screens/AboutScreen.dart';

Widget projectGridView(
    BuildContext context, List<Map<String, dynamic>> infoMapList) {
  return GridView.builder(
    shrinkWrap:false,
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
          height: MediaQuery.of(context).size.width * 0.17,
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
                      style:
                          GoogleFonts.roboto(color: Colors.white, fontSize: 34),
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
                        fontSize: 20,
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
                        RaisedButton(
                          elevation: 20,
                          color: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                            ),
                          ),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.159,
                            height: MediaQuery.of(context).size.width * 0.09,
                            child: Text(
                              "Tech Used",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.aladin(
                                  color: Colors.white,
                                  fontSize: 27,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          onPressed: () {},
                        ),
                        Container(
                          height: 110,
                          width: MediaQuery.of(context).size.width * 0.001,
                          color: Colors.white70,
                        ),
                        RaisedButton(
                          onPressed: () {},
                          elevation: 20,
                          color: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.123,
                            child: GridView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 2.7,
                              ),
                              itemBuilder: (ctx, i) {
                                if (i < 2)
                                  return Image.asset(
                                    infoMapList[index]['techUsed'][i],
                                    height: 1,
                                    width: 1,
                                    fit: BoxFit.fitHeight,
                                  );
                                return null;
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
