import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
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
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.08),
          // color: Colors.white,
          height: MediaQuery.of(context).size.height * 0.8,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 70.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Monikinderjit Singh",
                            //   style: GoogleFonts.lora(
                            //       color: Color(0xff173266), fontSize: 60,fontWeight: FontWeight.w800),
                            // ),
                            style: TextStyle(
                              fontFamily: 'TheRichJuliet',
                              fontSize: 60,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.05,
                          ),
                          Container(
                            child: TypewriterAnimatedTextKit(
                              onTap: () {
                                print("Tap Event");
                              },
                              speed: Duration(milliseconds: 70),
                              text: [
                                "Love Exploring technologies",
                                "Mostly Debugging code than writing :)",
                                "Built with Flutter Web",
                              ],
                              textStyle: GoogleFonts.lora(
                                  color: Colors.blueAccent[700], fontSize: 40),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * 0.12,),
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color:Colors.white,
                          ),
                          child: Image.asset(
                            
                            'assets/images/me.png',
                            fit: BoxFit.contain,
                            filterQuality: FilterQuality.high,
                            semanticLabel: 'Monikinderjit Singh Image',
                          ),
                        ),
                        // CircleAvatar(
                        //   radius: MediaQuery.of(context).size.width * 0.089,
                        //   backgroundImage: AssetImage('assets/images/me2.jpg'),
                        // ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.21,
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
              footer(context),
            ],
          ),
        ),
      ),
    );
  }
}
