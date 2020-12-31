import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SkillsSmall {
  SkillsSmall(this.context, this.langFram, this.tools);

  BuildContext context;
  List<String> langFram;
  List<String> tools;
  List<dynamic> skillsSmall() {
    return [
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
                    style:
                        GoogleFonts.roboto(fontSize: 15, color: Colors.black),
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
                      itemCount: langFram.length,
                      padding: EdgeInsets.zero,
                      itemBuilder: (ctx, index) {
                        return Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.02),
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
                                    left: MediaQuery.of(context).size.width *
                                        0.008),
                                child: Text(
                                  langFram[index],
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Tools",
                    textAlign: TextAlign.center,
                    softWrap: true,
                    style:
                        GoogleFonts.roboto(fontSize: 15, color: Colors.black),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.01),
                    color: Colors.transparent,
                    width: MediaQuery.of(context).size.width * 0.32,
                    height: MediaQuery.of(context).size.height * 0.35,
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      // itemExtent: 24,
                      itemCount: tools.length,
                      padding: EdgeInsets.zero,
                      itemBuilder: (ctx, index) {
                        return Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.02),
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
                                    left: MediaQuery.of(context).size.width *
                                        0.008),
                                child: Text(
                                  tools[index],
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
    ];
  }
}
