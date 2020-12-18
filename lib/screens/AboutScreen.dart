import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:universal_html/html.dart' as html;
import 'package:flutter/foundation.dart' show kIsWeb;

import '../widgets/Skills.dart';
import '../widgets/appBarWidget.dart';

class AboutScreen extends StatelessWidget {
  static const String routeName = '/AboutScreen';
  final bool isHomePage = true;
  static void openLink(String url) async {
    // String url = 'https://flutter.dev';
    if (kIsWeb) {
      html.window.open(url, '_blank');
    } else {
      if (await canLaunch(url)) {
        launch(url);
      }
    }
  }

  Widget build(BuildContext context) {
    ScrollController _scrollController = ScrollController();
    return Scaffold(
      backgroundColor: Color.fromRGBO(189, 224, 255, 1),
      appBar: appBarWidget(context, _scrollController, isHomePage),
      body: Scrollbar(
        thickness: 12,
        isAlwaysShown: true,
        radius: Radius.circular(6),
        child: Container(
          height: MediaQuery.of(context).size.height * 1.28,
          child: Stack(
            children: [
              ListWheelScrollView(
                controller: _scrollController,
                // offAxisFraction: 0.2,
                diameterRatio: 5,
                itemExtent: MediaQuery.of(context).size.height,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        // color: Colors.green,
                        width: MediaQuery.of(context).size.width * 0.7,
                        height: MediaQuery.of(context).size.height * 0.8,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.1),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Hi, I'm Monik.",
                                    semanticsLabel: 'Monik intro',
                                    style: GoogleFonts.robotoSlab(
                                      fontSize: 40,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff00305b),
                                    ),
                                  ),
                                  Text(
                                    'Building apps, web apps and Learning new technology',
                                    style: GoogleFonts.alef(
                                      fontSize: 60,
                                      fontWeight: FontWeight.w600,
                                      color:
                                          Color(0xff001b34), //Colors.black54,
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.05,
                                  ),
                                  Container(
                                    child: TypewriterAnimatedTextKit(
                                      speed: Duration(milliseconds: 100),
                                      text: [
                                        "Love Exploring technologies.",
                                        "Mostly Debugging code than writing :).",
                                        "Built with Flutter Web.",
                                      ],
                                      textStyle: GoogleFonts.lora(
                                        color: Colors
                                            .pink, // Colors.blueAccent[700],
                                        fontSize: 40,
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                // color: Colors.pink,
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.only(
                                  top:
                                      MediaQuery.of(context).size.height * 0.25,
                                  // left: MediaQuery.of(context).size.width * 0.087,
                                  bottom: MediaQuery.of(context).size.height *
                                      0.008,
                                ),
                                child: Text(
                                  'My Skills',
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.robotoSlab(
                                      fontSize: 50,
                                      color: Color(0xff00305b),
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width * 0.12,
                        ),
                        alignment: Alignment.center,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(10),
                                ),
                                color: Color(0xff173266),
                              ),
                              child: Image.asset(
                                'assets/images/me2.png',
                                fit: BoxFit.fitHeight,
                                filterQuality: FilterQuality.high,
                                semanticLabel: 'Monikinderjit Singh Image',
                                scale: 0.87,
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.2,
                              height: MediaQuery.of(context).size.height * 0.1,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  // SizedBox(width: 20.0, height: 100.0),
                                  Text(
                                    "Be",
                                    style: TextStyle(fontSize: 43.0),
                                  ),
                                  SizedBox(width: 20.0, height: 100.0),
                                  RotateAnimatedTextKit(
                                      repeatForever: true,
                                      text: [
                                        "DISCIPLINED",
                                        "OPTIMISTIC",
                                        "LEARNER",
                                        "LISTENER"
                                      ],
                                      textStyle:
                                          GoogleFonts.orbitron(fontSize: 40.0),
                                      textAlign: TextAlign.start),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01),
                    ],
                  ),
                  skillsWidget(context),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Built with",
                        style: GoogleFonts.roboto(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.favorite,
                        color: Colors.blue[900],
                        size: 21,
                      ),
                      Text(
                        " by Monikinderjit Singh",
                        style: GoogleFonts.robotoSlab(
                            fontSize: 21, fontWeight: FontWeight.w600),
                      ),
                      // socialMediaRow(),
                    ],
                  ),
                ],
              ),
              FloatingActionButton(
                onPressed: () {
                  _scrollController.animateTo(
                    MediaQuery.of(context).size.height,
                    duration: Duration(seconds: 3),
                    curve: Curves.easeOut,
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
