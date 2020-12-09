import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/AppBarWidget.dart';

class AboutScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(189, 224, 255, 1),
      appBar: appBarWidget(context),
      body: SingleChildScrollView(
              child: Container(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.08),
          // color: Colors.white,
          height: MediaQuery.of(context).size.height * 0.9,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width/2,
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
                      style:TextStyle(fontFamily: 'TheRichJuliet',fontSize: 60)),
                      SizedBox(height: MediaQuery.of(context).size.height*0.1,),
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
              Padding(
                padding: EdgeInsets.only(right:50.0),
                child: Container(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    radius: MediaQuery.of(context).size.width * 0.12,
                    backgroundColor: Colors.black,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
