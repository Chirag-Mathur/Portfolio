import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/src/SkillsLarge.dart';
import 'package:my_portfolio/src/SkillsSmall.dart';
import 'package:my_portfolio/src/info/globals.dart';
import 'package:theme_provider/theme_provider.dart';

Widget skillsWidget(BuildContext context) {
  final List<String> _langFram = Globals.langAndFramewks;
  final List<String> _tools = Globals.tools;
  // var skillsLarge = [];
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.16,
            left: MediaQuery.of(context).size.width * 0.087,
            bottom: 0,
          ),
          child: Text(
            'My Skills',
            textAlign: TextAlign.left,
            style: ThemeProvider.themeOf(context).id == 'dark'
                ? GoogleFonts.robotoSlab(
                    fontSize: Globals.isLargeScreen(context) ? 45 : 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  )
                : GoogleFonts.robotoSlab(
                    fontSize: Globals.isLargeScreen(context) ? 45 : 25,
                    color: Color(0xff00305b),
                    fontWeight: FontWeight.w600),
            // Theme.of(context).primaryTextTheme.subtitle1
          ),
        ),
        if (Globals.isLargeScreen(context)) 
        ...SkillsLarge(context, _langFram, _tools).skillsLarge(),// ...skillsLarge,
       
        if (Globals.isSmallScreen(context))
         ...SkillsSmall(context, _langFram, _tools).skillsSmall(),
      ],
    ),
  );
}
