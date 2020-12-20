import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:my_portfolio/widgets/appDrawer.dart';

import '../info/globals.dart';
import '../widgets/socialMediaRow.dart';
import '../widgets/Skills.dart';
import '../widgets/appBarWidget.dart';

class AboutScreen extends StatefulWidget {
  static const String routeName = '/AboutScreen';

  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen>
    with SingleTickerProviderStateMixin {
    static  GlobalKey<ScaffoldState> scaffoldKey1 = GlobalKey<ScaffoldState>();
  final bool isHomePage = true;

  Animation<double> _animation;
  AnimationController _animationController;
  var myImage1;
  @override
  void initState() {
    myImage1 = Image.asset(
      'assets/images/me2.png',
      fit: BoxFit.fitHeight,
      filterQuality: FilterQuality.high,
      semanticLabel: 'Monikinderjit Singh Image',
      scale: 0.87,
    );
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 260),
    );

    final curvedAnimation =
        CurvedAnimation(curve: Curves.easeInOut, parent: _animationController);
    _animation = Tween<double>(begin: -1, end: 1).animate(curvedAnimation);

    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(myImage1.image, context);
  }

  Widget build(BuildContext context) {
    ScrollController _scrollController = ScrollController();
    return Scaffold(
      key: scaffoldKey1,
      drawer: appDrawer(context),
      backgroundColor: Globals.backgroundColor,
      appBar: appBarWidget(context, _scrollController, isHomePage),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: socialMediaButton(),
      body: Scrollbar(
        thickness: 12,
        isAlwaysShown: true,
        radius: Radius.circular(6),
        controller: _scrollController,
        child: Container(
          height: MediaQuery.of(context).size.height * 1.28,
          child: Stack(
            children: [
              ListWheelScrollView(
                controller: _scrollController,
                // offAxisFraction: 0.2,
                diameterRatio: 17.5,
                clipBehavior: Clip.hardEdge,
                itemExtent: MediaQuery.of(context).size.height * 1.3,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          // color: Colors.green,
                          width: MediaQuery.of(context).size.width * 0.7,
                          height: MediaQuery.of(context).size.height * 0.8,
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width * 0.1),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Hi",
                                          semanticsLabel: 'Monik intro',
                                          style: GoogleFonts.robotoSlab(
                                            fontSize: 40,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xff00305b),
                                          ),
                                        ),
                                        Image.network(
                                          "https://media.giphy.com/media/Vhd10uVrDjMhAG7IyV/giphy.gif",
                                          // scale: 0.5,
                                          width: 47,

                                          height: 125,
                                          fit: BoxFit.fitHeight,
                                        ),
                                        Text(
                                          ", I'm Monik.",
                                          semanticsLabel: 'Monik intro',
                                          style: GoogleFonts.robotoSlab(
                                            fontSize: 40,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xff00305b),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'Building apps, web apps and Learning new technology',
                                      style: GoogleFonts.alef(
                                        fontSize: 60,
                                        fontWeight: FontWeight.w600,
                                        color:
                                            Color(0xff001b34), //Colors.black54,
                                      ),
                                    ),
                                    SizedBox(
                                      height: MediaQuery.of(context).size.height *
                                          0.05,
                                    ),
                                    Container(
                                      child: TypewriterAnimatedTextKit(
                                        speed: Duration(milliseconds: 150),
                                        text: [
                                          "Love Exploring technologies.",
                                          "Mostly Debugging code than writing :).",
                                          "Built with Flutter Web.",
                                        ],
                                        textStyle: GoogleFonts.lora(
                                          color: Colors
                                              .pink, // Colors.blueAccent[700],
                                          fontSize: 40,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width*0.3,
                          // margin: EdgeInsets.only(
                          //   right: MediaQuery.of(context).size.width * 0.12,
                          // ),
                          alignment: Alignment.center,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(10),
                                  ),
                                  color: Color(0xff173266),
                                ),
                                child: myImage1,
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height * 0.01,
                              ),
                              // Container(
                              //   alignment: Alignment.center,
                              //   width: MediaQuery.of(context).size.width * 0.21,
                              //   height: MediaQuery.of(context).size.height * 0.1,
                              //   child: RotateAnimatedTextKit(
                              //     repeatForever: true,
                              //     text: [
                              //       "DISCIPLINED",
                              //       "OPTIMISTIC",
                              //       "LEARNER",
                              //       "LISTENER"
                              //     ],
                              //     textStyle: GoogleFonts.orbitron(fontSize: 40.0),
                              //     textAlign: TextAlign.center,
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.zero, //all(38.0),
                    child: skillsWidget(context),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Built with",
                        style: GoogleFonts.roboto(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.favorite,
                        color: Colors.blue[900],
                        size: 21,
                      ),
                      Text(
                        " by Monikinderjit Singh",
                        style: GoogleFonts.robotoSlab(
                            fontSize: 21, fontWeight: FontWeight.w600),
                      ),
                      // socialMediaRow(),
                    ],
                  ),
                ],
              ),
              // FloatingActionButton(
              //   onPressed: () {
              //     _scrollController.animateTo(
              //       MediaQuery.of(context).size.height,
              //       duration: Duration(seconds: 3),
              //       curve: Curves.easeOut,
              //     );
              //   },
              // )
            ],
          ),
        ),
      ),
    );
  }
}
