import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../info/projects.dart';

class SkillsScreen extends StatelessWidget {
  static const routeName = '/skillsScreen';
  final List<String> _langFram = langAndFramewks;
  final List<String> _tools = tools;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(189, 224, 255, 1),
      body: Container(
        child: Column(
          children: [
            Container(
              color: Colors.transparent,
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
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
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
                      color: Colors.transparent,
                      width: MediaQuery.of(context).size.width * 0.27,
                      height: MediaQuery.of(context).size.width * 0.18,
                      //   // color: Colors.blueAccent,
                      //   decoration: BoxDecoration( borderRadius: BorderRadius.all(
                      //             Radius.circular(12),
                      //           ),),
                      child: ListView.builder(
                        // physics: NeverScrollableScrollPhysics(),
                        itemCount: _langFram.length,
                        padding: EdgeInsets.zero,
                        itemBuilder: (ctx, index) {
                          // if(index<_langFram.length)
                          return
                              // Card(
                              //   shape: RoundedRectangleBorder(
                              //     borderRadius: BorderRadius.all(
                              //       Radius.circular(15),
                              //     ),
                              //   ),
                              //   elevation: 2,
                              // child:
                              Padding(
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
                          // else
                          // return null;
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.transparent,
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
                    Radius.circular(15),
                  ),
                ),
                color: Colors.transparent,
                elevation: 10,
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.27,
                      height: MediaQuery.of(context).size.height * 0.046,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
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
                    Divider(
                      color: Colors.black54,
                      thickness: 1,
                    ),
                    Container(
                      color: Colors.transparent,
                      width: MediaQuery.of(context).size.width * 0.27,
                      height: MediaQuery.of(context).size.width * 0.18,
                      child: ListView.builder(
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
    );
  }
}
