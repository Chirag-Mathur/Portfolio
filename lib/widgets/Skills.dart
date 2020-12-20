import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../info/globals.dart';

Widget skillsWidget(BuildContext context) {
  final List<String> _langFram = Globals.langAndFramewks;
  final List<String> _tools = Globals.tools;
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.16,
            left: MediaQuery.of(context).size.width * 0.087,
            bottom: 0,
          ),
          child: Text(
            'My Skills',
            textAlign: TextAlign.left,
            style: GoogleFonts.robotoSlab(
                fontSize: Globals.isLargeScreen(context) ? 45 : 25,
                color: Color(0xff00305b),
                fontWeight: FontWeight.w600),
          ),
        ),
        if (Globals.isLargeScreen(context))
          Container(
            padding: EdgeInsets.zero,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.45,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: (!Globals.isLargeScreen(context))
                  ? MainAxisAlignment.center
                  : MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.1,
                  ),
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: MediaQuery.of(context).size.height * 0.45,
                  child: Card(
                    margin: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    color: Colors.transparent,
                    elevation: 10,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.32,
                          height: MediaQuery.of(context).size.height * 0.058,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                            color: Color(0xff6fbbff), // Colors.transparent,
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "Languages ",
                            textAlign: TextAlign.center,
                            softWrap: true,
                            style: GoogleFonts.roboto(
                                fontSize: 30, color: Colors.black),
                          ),
                        ),
                        Container(
                          // margin: EdgeInsets.only(
                          //     top: MediaQuery.of(context).size.height * 0.01),
                          color: Colors.transparent,
                          width: MediaQuery.of(context).size.width * 0.32,
                          height: MediaQuery.of(context).size.height * 0.35,
                          child: ListView.builder(
                            shrinkWrap: false,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: _langFram.length,
                            padding: EdgeInsets.zero,
                            itemBuilder: (ctx, index) {
                              return Padding(
                                padding: EdgeInsets.only(
                                  left:
                                      MediaQuery.of(context).size.width * 0.008,
                                ),
                                child: ListTile(
                                  leading: Icon(
                                    Icons.arrow_forward_ios_sharp,
                                    color: Colors.pink,
                                    semanticLabel: 'skills arrow',
                                    size: 28,
                                  ),
                                  title: Padding(
                                    padding: EdgeInsets.only(
                                        left:
                                            MediaQuery.of(context).size.width *
                                                0.007),
                                    child: Text(
                                      _langFram[index],
                                      style: GoogleFonts.openSans(
                                          fontSize: 25,
                                          color: Color(0xff00305b),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                if (Globals.isLargeScreen(context))
                  Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.09),
                    child: Image.asset(
                      'assets/images/coding2.png',
                      scale: 0.8,
                      // width: MediaQuery.of(context).size.width * 0.4,
                      // height: MediaQuery.of(context).size.height * 0.424,
                    ),
                  ),
              ],
            ),
          ),
        if (Globals.isLargeScreen(context))
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.447,
            child: Row(
              children: [
                Image.asset(
                  'assets/images/githubill3.png',
                  scale: 1,
                  width: MediaQuery.of(context).size.width * 0.6,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.27,
                  height: MediaQuery.of(context).size.height * 0.45,
                  margin: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width * 0.1),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    color: Colors.transparent,
                    elevation: 10,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.height * 0.057,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),

                            color: Color(0xff6fbbff), // Colors.transparent,
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "Tools",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                                fontSize: 30, color: Colors.black),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.01),
                          color: Colors.transparent,
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.height * 0.35,
                          child: ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: false,
                            itemCount: _tools.length,
                            padding: EdgeInsets.zero,
                            itemBuilder: (ctx, index) {
                              return Padding(
                                padding: EdgeInsets.only(
                                    left: MediaQuery.of(context).size.width *
                                        0.013),
                                child: ListTile(
                                  leading: Icon(
                                    Icons.arrow_forward_ios_sharp,
                                    color: Colors.pink,
                                    semanticLabel: 'tools arrow',
                                    size: 28,
                                  ),
                                  title: Padding(
                                    padding: EdgeInsets.only(
                                        left:
                                            MediaQuery.of(context).size.width *
                                                0.007),
                                    child: Text(
                                      _tools[index],
                                      style: GoogleFonts.openSans(
                                          fontSize: 25,
                                          color: Color(0xff00305b),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        if (Globals.isSmallScreen(context))
          Container(
            width: MediaQuery.of(context).size.width * 0.98,
            height: MediaQuery.of(context).size.height * 0.24,
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.087,
                    top: MediaQuery.of(context).size.height * 0.01,
                  ),
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Languages",
                        textAlign: TextAlign.center,
                        softWrap: true,
                        style: GoogleFonts.roboto(
                            fontSize: 15, color: Colors.black),
                      ),
                      // ),
                      Container(
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.01),
                        color: Colors.transparent,
                        width: MediaQuery.of(context).size.width * 0.32,
                        height: MediaQuery.of(context).size.height * 0.35,
                        child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          // itemExtent: 24,
                          itemCount: _langFram.length,
                          padding: EdgeInsets.zero,
                          itemBuilder: (ctx, index) {
                            return Padding(
                              padding: EdgeInsets.only(
                                  left:
                                      MediaQuery.of(context).size.width * 0.02),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 4.0),
                                    child: Icon(
                                      Icons.arrow_forward_ios_sharp,
                                      color: Colors.pink,
                                      semanticLabel: 'skills arrow',
                                      size: 13,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left:
                                            MediaQuery.of(context).size.width *
                                                0.008),
                                    child: Text(
                                      _langFram[index],
                                      style: GoogleFonts.openSans(
                                          fontSize: 15,
                                          color: Color(0xff00305b),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.13,
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.087,
                    top: MediaQuery.of(context).size.height * 0.01,
                  ),
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Column(
                    // mainAxisSize: MainAxisSize.min,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Tools",
                        textAlign: TextAlign.center,
                        softWrap: true,
                        style: GoogleFonts.roboto(
                            fontSize: 15, color: Colors.black),
                      ),
                      // ),
                      Container(
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.01),
                        color: Colors.transparent,
                        width: MediaQuery.of(context).size.width * 0.32,
                        height: MediaQuery.of(context).size.height * 0.35,
                        child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          // itemExtent: 24,
                          itemCount: _tools.length,
                          padding: EdgeInsets.zero,
                          itemBuilder: (ctx, index) {
                            return Padding(
                              padding: EdgeInsets.only(
                                  left:
                                      MediaQuery.of(context).size.width * 0.02),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 4.0),
                                    child: Icon(
                                      Icons.arrow_forward_ios_sharp,
                                      color: Colors.pink,
                                      semanticLabel: 'tools arrow',
                                      size: 13,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left:
                                            MediaQuery.of(context).size.width *
                                                0.008),
                                    child: Text(
                                      _tools[index],
                                      style: GoogleFonts.openSans(
                                          fontSize: 15,
                                          color: Color(0xff00305b),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
      ],
    ),
  );
}
