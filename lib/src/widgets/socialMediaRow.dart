import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:my_portfolio/src/info/globals.dart';
import 'package:theme_provider/theme_provider.dart';

Widget socialMediaButton() {
  return SpeedDial(
    // both default to 16
    marginRight: 25,
    marginBottom: 23,
    animatedIcon: AnimatedIcons.menu_close,
    animatedIconTheme: IconThemeData(size: 22.0),
    closeManually: false,
    curve: Curves.bounceIn,
    overlayColor: Colors.black,
    overlayOpacity: 0.1,
    tooltip: 'Social Media',
    heroTag: 'Social Media',
    backgroundColor: Color(0xff173266),
    elevation: 10.0,
    children: [
      SpeedDialChild(
        child: Image.asset(
          'assets/images/github.png',
        ),
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        // label: 'Github',
        labelStyle: TextStyle(fontSize: 18.0),
        onTap: () => Globals.openLink(
          "https://github.com/Monik09",
        ),
      ),
      SpeedDialChild(
        child: Image.asset(
          'assets/images/linkedin_logo.png',
        ),
        backgroundColor: Colors.white,
        // label: 'LinkedIn',
        labelStyle: TextStyle(fontSize: 18.0),
        onTap: () => Globals.openLink(
          "https://www.linkedin.com/in/monikinderjit-singh/",
        ),
      ),
      SpeedDialChild(
        child: Image.asset(
          'assets/images/twitter_logo.png',
        ),
        backgroundColor: Colors.white,
        // label: 'Twitter',
        labelStyle: TextStyle(fontSize: 18.0),
        onTap: () => Globals.openLink(
          "https://twitter.com/MonikIJS",
        ),
      ),
      SpeedDialChild(
        child: Image.asset(
          'assets/images/insta_logo.png',
        ),
        backgroundColor: Colors.white,
        // label: 'Insta',
        labelStyle: TextStyle(fontSize: 18.0),
        onTap: () => Globals.openLink(
          "https://www.instagram.com/monikinderjit_singh_/",
        ),
      ),
    ],
  );
}

Widget socialMediaRowDrawer(BuildContext context) {
  return Container(
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              color: Colors.white,
              icon: Image.asset(
                'assets/images/twitterla.png',
              ),
              onPressed: () {
                Globals.openLink(
                  "https://twitter.com/MonikIJS",
                );
              },
              iconSize: 35,
            ),
            IconButton(
              color: Colors.white,
              icon: Image.asset(
                'assets/images/insta.png',
              ),
              onPressed: () {
                Globals.openLink(
                  "https://www.instagram.com/monikinderjit_singh_/",
                );
              },
              iconSize: 35,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Image.asset(
                'assets/images/githubl.png',
                color: ThemeProvider.themeOf(context).id == 'dark'
                    ? Colors.white
                    : Colors.black,
              ),
              onPressed: () {
                Globals.openLink("https://github.com/Monik09");
              },
              hoverColor: Colors.transparent,
              iconSize: 38,
            ),
            IconButton(
              icon: Image.asset(
                'assets/images/linkedinla.png',
              ),
              iconSize: 35,
              onPressed: () {
                Globals.openLink(
                  "https://www.linkedin.com/in/monikinderjit-singh/",
                );
              },
            ),
          ],
        ),
      ],
    ),
  );
}

Widget socialMediaRow(BuildContext context, double size) {
  return FittedBox(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          icon: Image.asset(
            'assets/images/linkedinla.png',
          ),
          onPressed: () {
            Globals.openLink(
                "https://www.linkedin.com/in/monikinderjit-singh/");
          },
          iconSize: size,
          hoverColor: Colors.transparent,
        ),
        IconButton(
          icon: Image.asset(
            'assets/images/twitterla.png',
          ),
          onPressed: () {
            Globals.openLink("https://twitter.com/MonikIJS");
          },
          hoverColor: Colors.transparent,
          iconSize: size,
        ),
        IconButton(
          icon: Image.asset(
            'assets/images/github2.png',
            //  color:ThemeProvider.themeOf(context).id=='dark'? Colors.white:Colors.black,
          ),
          onPressed: () {
            Globals.openLink("https://github.com/Monik09");
          },
          hoverColor: Colors.transparent,
          iconSize: size,
        ),
        IconButton(
          icon: Image.asset(
            'assets/images/insta.png',
          ),
          onPressed: () {
            Globals.openLink("https://www.instagram.com/monikinderjit_singh_/");
          },
          hoverColor: Colors.transparent,
          iconSize: size,
        ),
      ],
    ),
  );
}
