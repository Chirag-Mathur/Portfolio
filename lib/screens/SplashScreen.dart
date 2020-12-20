import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';

import './AboutScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  // static bool getisLoaded() {
  //   return isLoaded;
  // }

  AnimationController animationController;
  Animation<double> animation;
  Timer timer;
  @override
  void initState() {
    // animationController = new AnimationController(
    //     vsync: this, duration: new Duration(seconds: 10));
    // animation =
    //     new CurvedAnimation(parent: animationController, curve: Curves.easeOut);

    progresser();
    Timer(Duration(seconds: 9), () {
      print('To About Screen');
      // Navigator.of(context).popAndPushNamed(AboutScreen.routeName);
      Navigator.of(context).push(
        PageRouteBuilder(
          pageBuilder: (context, animation, anotherAnimation) {
            return AboutScreen();
          },
          transitionDuration: Duration(milliseconds: 2000),
          transitionsBuilder: (context, animation, anotherAnimation, child) {
            animationController = new AnimationController(
              vsync: this,
              duration: new Duration(seconds: 9),
            );
            animation = CurvedAnimation(
                curve: Curves.easeInToLinear, parent: animation);
            animationController.forward();
            return Align(
              child: SizeTransition(
                sizeFactor: animation,
                child: child,
                axisAlignment: -1.0,
              ),
            );
          },
        ),

        // ProjectScreen.routeName
      );
    });

    super.initState();
  }

  @override
  void dispose() {
    timer.cancel();
    animationController.dispose();
    super.dispose();
  }

  static double value = 0.0;
  void progresser() {
    timer = Timer.periodic(Duration(milliseconds: 10), (t) {
      if (value < 1)
        setState(() {
          value += 0.0015;
          print(value);
        });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff173266),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'M',
              style: GoogleFonts.blackOpsOne(
                fontSize: 120,
                color: Colors.white,
                // fontWeight: FontWeight.w800
              ),
            ),
            Text(
              'Monikinderjit Singh',
              style: TextStyle(
                  fontFamily: 'TheRichJuliet',
                  fontSize: 70,
                  color: Colors.white,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
            ),
            Container(
              width: 300,
              height: 30,
              child: LiquidLinearProgressIndicator(
                value: (value < 1) ? value : 1.7, // Defaults to 0.5.
                valueColor: AlwaysStoppedAnimation(Colors
                    .pink), // Defaults to the current Theme's accentColor.
                backgroundColor: Colors.white,
                borderWidth: 2.0,
                borderColor: Colors.white,
                borderRadius: 12.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
