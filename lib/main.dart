import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/src/info/globals.dart';
import 'package:my_portfolio/src/screens/AboutScreen.dart';
import 'package:my_portfolio/src/screens/ContactScreen.dart';
import 'package:my_portfolio/src/screens/ProjectScreen.dart';
import 'package:theme_provider/theme_provider.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      backgroundColor: Globals.backgroundColorLight,
      splashColor: Globals.splashColorLight,
      hoverColor: Colors.black12,
      appBarTheme: AppBarTheme(
        elevation: 0,
        textTheme: TextTheme(
          headline5: GoogleFonts.domine(
            fontWeight: FontWeight.w600,
            fontSize: 25,
            color: Color(0xff173266),
          ),
        ),
      ),
      textTheme: TextTheme(
        headline1: TextStyle(
          fontFamily: 'TheRichJuliet',
          fontSize: 53,
          color: Color(0xff173266),
          fontWeight: FontWeight.w600,
        ),
        bodyText1: GoogleFonts.openSans(
          fontSize: 27,
          color: Color(0xff00305b),
          fontWeight: FontWeight.w600,
        ),
        bodyText2: GoogleFonts.tinos(
          fontSize: 50,
          color: Colors.blue[900], //Color(0xff3f3d56), // ,
          fontWeight: FontWeight.w700,
        ),
      ),
    );

    ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      backgroundColor: Colors
          .black87, //Colors.black,//Color(0xff2F2F31),//Color(0xff19181A),
      appBarTheme: AppBarTheme(
        elevation: 2,
        textTheme: TextTheme(
          headline5: GoogleFonts.domine(
            fontWeight: FontWeight.w600,
            fontSize: 25,
            color: Color(0xff26ABBF), // Colors.white60,
          ),
        ),
        shadowColor: Colors.grey[600],
      ),
      textTheme: TextTheme(
        headline1: TextStyle(
          fontFamily: 'TheRichJuliet',
          fontSize: 53,
          fontWeight: FontWeight.w500,
          color: Color(0xfff8f1f1),
        ),
        bodyText1: GoogleFonts.openSans(
          fontSize: 27,
          color: Colors.white70, // Colors.pinkAccent[700],
          fontWeight: FontWeight.w600,
        ),
        bodyText2: GoogleFonts.tinos(
          fontSize: 50,
          color: Colors.purpleAccent[400], //Color(0xff3f3d56), // ,
          fontWeight: FontWeight.w700,
        ),
      ),
    );

    return ThemeProvider(
      // saveThemesOnChange: true,
      loadThemeOnInit: true,
      defaultThemeId: 'dark',
      onInitCallback: (controller, previouslySavedThemeFuture) async {
    // Do some other task here if you need to
    String savedTheme = await previouslySavedThemeFuture;
    if (savedTheme != null) {
      controller.setTheme(savedTheme);
    }
  },
      themes: <AppTheme>[
        AppTheme(id: 'light', data: lightTheme),
        AppTheme(id: 'dark', data: darkTheme),
      ],
      child: ThemeConsumer(
        child: Builder(
          builder: (context) => MaterialApp(
            title: 'Monikinderjit Singh Portfolio',
            theme: ThemeProvider.themeOf(context).data, //  Globals.lightTheme,
            // darkTheme: Globals.darkTheme,
            // themeMode: ThemeMode.dark,
            home: AboutScreen(), // SplashScreen(), // Timeline(),
            routes: {
              AboutScreen.routeName: (context) => AboutScreen(),
              ProjectScreen.routeName: (context) => ProjectScreen(),
              ContactScreen.routeName: (context) => ContactScreen(),
            },
          ),
        ),
      ),
    );
  }
}
