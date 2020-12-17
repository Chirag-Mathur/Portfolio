import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:my_portfolio/widgets/Skills.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:universal_html/html.dart' as html;
import 'package:flutter/foundation.dart' show kIsWeb;

import '../widgets/footer.dart';
import '../widgets/appBarWidget.dart';

class AboutScreen extends StatelessWidget {
  static const String routeName = '/AboutScreen';
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
    return Scaffold(
      backgroundColor: Color.fromRGBO(189, 224, 255, 1),
      appBar: appBarWidget(context),
      body: Scrollbar(
        thickness: 12,
        isAlwaysShown: true,
        radius: Radius.circular(6),
        // controller: _scrollController,
        // isAlwaysShown: true,
        // child: SingleChildScrollView(
          child:Container(
            height: MediaQuery.of(context).size.height*1.3,
            child: ListView(
              itemExtent: MediaQuery.of(context).size.height,
            // child: Container(
            //   padding: EdgeInsets.only(
            //       top: MediaQuery.of(context).size.height * 0.08),
            //   // color: Colors.white,
            //   height: MediaQuery.of(context).size.height * 2.25,
            //   width: MediaQuery.of(context).size.width,
            //   child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.1),
                          child: Column(
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
                                  color: Color(0xff001b34), //Colors.black54,
                                ),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height * 0.05,
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
                                    color: Colors.pink, // Colors.blueAccent[700],
                                    fontSize: 40,
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height *
                                        0.055),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(25),
                                  ),
                                ),
                                height: MediaQuery.of(context).size.height * 0.12,
                                width: MediaQuery.of(context).size.width * 0.1,
                                child: RaisedButton(
                                  elevation: 10,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(27),
                                    ),
                                  ),
                                  color: Color(0xff001b34),
                                  onPressed: () {},
                                  child: Text(
                                    'Contact Me',
                                    style: GoogleFonts.robotoSlab(
                                        fontSize: 24, color: Colors.white),
                                  ),
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
                                scale: 0.8,
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
                                  SizedBox(width: 20.0, height: 100.0),
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
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Row(
                              children: [
                                IconButton(
                                  icon: Image.asset(
                                    'assets/images/linkedin.png',
                                  ),
                                  onPressed: () {
                                    openLink(
                                        "https://www.linkedin.com/in/monikinderjit-singh/");
                                  },
                                  iconSize: 39,
                                ),
                                IconButton(
                                  icon: Image.asset(
                                    'assets/images/twitter.png',
                                  ),
                                  onPressed: () {
                                    openLink("https://twitter.com/MonikIJS");
                                  },
                                  iconSize: 42,
                                ),
                                IconButton(
                                  icon: Image.asset(
                                    'assets/images/github.png',
                                  ),
                                  onPressed: () {
                                    openLink("https://github.com/Monik09");
                                  },
                                  iconSize: 42,
                                ),
                                IconButton(
                                  icon: Image.asset(
                                    'assets/images/fb.png',
                                  ),
                                  onPressed: () {
                                    openLink(
                                        "https://www.facebook.com/monik.inderjitsingh.3");
                                  },
                                  iconSize: 37,
                                ),
                                IconButton(
                                  icon: Image.asset(
                                    'assets/images/insta.png',
                                  ),
                                  onPressed: () {
                                    openLink(
                                        "https://www.instagram.com/monikinderjit_singh_/");
                                  },
                                  iconSize: 43,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.4,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.087,
                      bottom: MediaQuery.of(context).size.height * 0.008,
                    ),
                    child: Text(
                      'My Skills',
                      style: GoogleFonts.robotoSlab(
                          fontSize: 50,
                          color: Color(0xff00305b),
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  skillsWidget(context),
                  
                  // footer(context),
                ],
              ),
          ),
          ),
      //   ),
      // ),
    );
  }
}
