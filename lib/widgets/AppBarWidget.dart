import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget appBarWidget(BuildContext context) {
  double fontsize = 25;
  Color textColor = Color(0xff173266);
  return AppBar(
    toolbarHeight: 120,
    elevation: 0,
    backgroundColor: Colors.transparent,
    actions: [
      FlatButton(
        child: Text(
          "About Me",
          style: GoogleFonts.domine(
            fontWeight: FontWeight.bold,
            fontSize:fontsize,
            color: textColor,
          ),
        ),
        onPressed: null,
      ),
      SizedBox(width: MediaQuery.of(context).size.width*0.02,),
      // Spacer(),
      FlatButton(
        child: Text(
          "Skills",
          style: GoogleFonts.domine(
            fontWeight: FontWeight.bold,
            fontSize: fontsize,
            color: textColor,
          ),
        ),
        onPressed: null,
      ),
      SizedBox(width: MediaQuery.of(context).size.width*0.02,),
      // Spacer(),
      FlatButton(
        child: Text(
          "Projects",
          style: GoogleFonts.domine(
            fontWeight: FontWeight.bold,
            fontSize: fontsize,
            color: textColor,
          ),
        ),
        onPressed: null,
      ),
      SizedBox(width: MediaQuery.of(context).size.width*0.02,),
      // Spacer(),
      FlatButton(
        child: Text(
          "Contact Me",
          style: GoogleFonts.domine(
            fontWeight: FontWeight.bold,
            fontSize: fontsize,
            color: textColor,
          ),
        ),
        onPressed: null,
      ),
      SizedBox(width: MediaQuery.of(context).size.width*0.003,),
      // Spacer(),
    ],
  );
}
