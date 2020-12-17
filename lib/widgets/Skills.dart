import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../info/projects.dart';

Widget skillsWidget(BuildContext context) {
  final List<String> _langFram = langAndFramewks;
  final List<String> _tools = tools;
  return Container(
    child: Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height*0.45,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.1,
                ),
                // color: Colors.transparent,
                width: MediaQuery.of(context).size.width * 0.27,
                height: MediaQuery.of(context).size.height * 0.39,
                decoration: BoxDecoration(
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
                    children: [
                      Container(
                        // padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.width*0.06),
                        width: MediaQuery.of(context).size.width * 0.27,
                        height: MediaQuery.of(context).size.height * 0.057,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                          border: Border(
                            bottom: BorderSide(
                              width: 4.3,
                              color: Colors.white70,
                            ),
                          ),
                          color: Color(0xff6fbbff), // Colors.transparent,
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "Languages And frameworks",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                              fontSize: 32, color: Colors.black),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.019),
                        color: Colors.transparent,
                        width: MediaQuery.of(context).size.width * 0.27,
                        height: MediaQuery.of(context).size.width * 0.18,
                        child: ListView.builder(
                          shrinkWrap: false,
                          // physics: NeverScrollableScrollPhysics(),
                          itemCount: _langFram.length,
                          padding: EdgeInsets.zero,
                          itemBuilder: (ctx, index) {
                            return Padding(
                              padding: EdgeInsets.only(
                                  left:
                                      MediaQuery.of(context).size.width * 0.013),
                              child: ListTile(
                                leading: Icon(
                                  Icons.arrow_forward_ios_sharp,
                                  color: Colors.pink,
                                  semanticLabel: 'skills arrow',
                                  size: 30,
                                ),
                                title: Padding(
                                  padding: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width *
                                          0.007),
                                  child: Text(
                                    _langFram[index],
                                    style: GoogleFonts.openSans(
                                        fontSize: 27,
                                        color: Color(0xff00305b),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                // ),
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.08),
                child: Image.asset(
                  'assets/images/coding2.png',
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.45,
                ),
              ),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height*0.45,
          child: Row(
            children: [
              Image.asset(
                'assets/images/githubill3.png',
                width: MediaQuery.of(context).size.width * 0.65,
                height: MediaQuery.of(context).size.height * 0.45,
              ),
              Container(
                color: Colors.transparent,
                width: MediaQuery.of(context).size.width * 0.27,
                height: MediaQuery.of(context).size.height * 0.39,
                margin: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width * 0.1),
                decoration: BoxDecoration(
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
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.27,
                        height: MediaQuery.of(context).size.height * 0.057,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                          border: Border(
                            bottom: BorderSide(
                              width: 4.3,
                              color: Colors.white70,
                            ),
                          ),
                          color: Color(0xff6fbbff), // Colors.transparent,
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "Tools",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                              fontSize: 32, color: Colors.black),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.019),
                        color: Colors.transparent,
                        width: MediaQuery.of(context).size.width * 0.27,
                        height: MediaQuery.of(context).size.width * 0.18,
                        child: ListView.builder(
                          shrinkWrap: false,
                          itemCount: _tools.length,
                          padding: EdgeInsets.zero,
                          itemBuilder: (ctx, index) {
                            return Padding(
                              padding: EdgeInsets.only(
                                  left:
                                      MediaQuery.of(context).size.width * 0.013),
                              child: ListTile(
                                leading: Icon(
                                  Icons.arrow_forward_ios_sharp,
                                  color: Colors.pink,
                                  semanticLabel: 'tools arrow',
                                  size: 30,
                                ),
                                title: Padding(
                                  padding: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width *
                                          0.007),
                                  child: Text(
                                    _tools[index],
                                    style: GoogleFonts.openSans(
                                        fontSize: 27,
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
      ],
    ),
  );
}