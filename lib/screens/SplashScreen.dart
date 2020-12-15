import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './AboutScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  var _visible = true;

  AnimationController animationController;
  Animation<double> animation;

//  @override
//   void initState() {
//     super.initState();
//     Timer(Duration(seconds: 2000), () {
//       Navigator.of(context).pushNamed(AboutScreen.routeName);
//     });
//   }
  @override
  void initState() {
    super.initState();
    animationController = new AnimationController(
        vsync: this, duration: new Duration(seconds: 20));
    animation =
        new CurvedAnimation(parent: animationController, curve: Curves.easeOut);

    animation.addListener(() => this.setState(() {}));
    animationController.forward();

    setState(() {
      _visible = !_visible;
    });
    // Timer(Duration(seconds: 6), () {
    //   Navigator.of(context).pushReplacementNamed(AboutScreen.routeName);
    // });
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
          children: [Text(
              'M',
              style:GoogleFonts.blackOpsOne(
                 fontSize: 120,
                  color: Colors.white,
                  // fontWeight: FontWeight.w800
              )
              //  TextStyle(
              //     fontFamily: 'BlackOpsOne',
              //     fontSize: 120,
              //     color: Colors.white,
              //     fontWeight: FontWeight.w800),
            ),
            Text(
              'Monikinderjit Singh',
              style: TextStyle(
                  fontFamily: 'TheRichJuliet',
                  fontSize: 70,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
