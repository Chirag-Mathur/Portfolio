import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget appBarWidget() {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    actions: [
      FlatButton(
        child: Text(
          "About Me",
          style: GoogleFonts.domine(
            fontWeight: FontWeight.bold,
            fontSize: 19,
            color: Color(0xff173266),
          ),
        ),
        onPressed: null,
      ),
      // Spacer(),
      FlatButton(
        child: Text(
          "Skills",
          style: GoogleFonts.domine(
            fontWeight: FontWeight.bold,fontSize: 19,color:Color(0xff173266),
          ),
        ),
        onPressed: null,
      ),
      // Spacer(),
      FlatButton(
        child: Text(
          "Projects",
          style: GoogleFonts.domine(
            fontWeight: FontWeight.bold,fontSize: 19,color:Color(0xff173266),
          ),
        ),
        onPressed: null,
      ),
      // Spacer(),
      FlatButton(
        child: Text(
          "Contact Me",
          style: GoogleFonts.domine(
            fontWeight: FontWeight.bold,fontSize: 19,color:Color(0xff173266),
          ),
        ),
        onPressed: null,
      ),
      // Spacer(),
    ],
  );
}
