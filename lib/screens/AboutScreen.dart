import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/appBarWidget.dart';

class AboutScreen extends StatelessWidget {
  static const String routeName = '/AboutScreen';
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
          child: Row(
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
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                      Text(
                        "I love exploring new things and giving my best to make use of it",
                        softWrap: true,
                        style: GoogleFonts.lora(
                            color: Colors.blueAccent[700], fontSize: 50),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width * 0.12),
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: MediaQuery.of(context).size.width * 0.12,
                      backgroundColor: Colors.black,
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
                          onPressed: () {},
                          iconSize: 39,
                        ),
                        IconButton(
                          icon: Image.asset(
                            'assets/images/twitter.png',
                          ),
                          onPressed: () {},
                          iconSize: 42,
                        ),
                        IconButton(
                          icon: Image.asset(
                            'assets/images/github.png',
                          ),
                          onPressed: () {},
                          iconSize: 42,
                        ),
                        IconButton(
                          icon: Image.asset(
                            'assets/images/fb.png',
                          ),
                          onPressed: () {},
                          iconSize: 37,
                        ),
                        IconButton(
                          icon: Image.asset(
                            'assets/images/insta.png',
                          ),
                          onPressed: () {},
                          iconSize: 43,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
