import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/src/screens/Timeline.dart';
import 'package:my_portfolio/src/widgets/LiteSwitch.dart';
import 'package:my_portfolio/src/widgets/appBarWidget.dart';
import 'package:my_portfolio/src/info/globals.dart';
import 'package:my_portfolio/src/widgets/footer.dart';
import 'package:my_portfolio/src/widgets/skills_grid.dart';
import 'package:my_portfolio/src/widgets/topAboutWidget.dart';
import 'package:my_portfolio/src/widgets/appDrawer.dart';
import 'package:theme_provider/theme_provider.dart';

class AboutScreen extends StatefulWidget {
  static const String routeName = '/AboutScreen';

  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen>
    with SingleTickerProviderStateMixin {
  static GlobalKey<ScaffoldState> scaffoldKey1 = GlobalKey<ScaffoldState>();
  final bool isHomePage = true;
  bool isDark = false;
  Animation<double> _animation;
  AnimationController _animationController;
  var myImage1;

  @override
  void initState() {
    myImage1 = Image.asset(
      'assets/images/me2.png',
      fit: BoxFit.contain,
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

  double getValueTop(double d, int i) {
    return ((i + 1) * 0.25 + d);
  }

  Widget build(BuildContext context) {
    var list;
    ScrollController _scrollController = ScrollController();
    print(MediaQuery.of(context).size.aspectRatio);
    print(MediaQuery.of(context).size.height);
    List<Widget> topChildren = topAboutPageWidget(context, myImage1);
    return Scaffold(
      key: scaffoldKey1,
      drawer: Globals.isLargeScreen(context)
          ? null
          : appDrawer(context, _scrollController, isDark),
      backgroundColor:
          Theme.of(context).backgroundColor, //Globals.backgroundColorLight,
      appBar:
          appBarWidget(context, _scrollController, isHomePage, scaffoldKey1),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
      floatingActionButton: Globals.isLargeScreen(context)
          ? Container(
              margin: EdgeInsets.only(
                top: 60, //93
                right: 20,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      blurRadius: 3,
                    ),
                    BoxShadow(color: Colors.grey[900], blurRadius: 2)
                  ]),
              child: RollSwitch(
                value: true,
                width: 100,
                textOn: 'Dark',
                textOff: 'Light',
                colorOff: Color(0xff204690), // Colors.blue[800],
                colorOn: Colors.purple[400],
                iconOn: Icons.nights_stay,
                iconOff: Icons.wb_sunny,
                textSize: 18.0,
                onChanged: (bool state) {
                  if (!isDark) {
                    setState(() {
                      isDark = true;
                    });
                    return;
                  }
                  ThemeProvider.controllerOf(context).nextTheme();
                },
              ),
            )
          : null,
      body: Scrollbar(
        thickness: Globals.isLargeScreen(context) ? 12 : 5,
        isAlwaysShown: true,
        radius: Radius.circular(6),
        controller: _scrollController,
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: CustomScrollView(
            primary: false,
            controller: _scrollController,
            shrinkWrap: true,
            slivers: [
              // appBarDesktopTablet(
              //   context,
              //   _scrollController,
              //   isHomePage,
              //   ThemeProvider.themeOf(context)
              //       .data
              //       .textTheme
              //       .headline5
              //       .fontSize,
              //   ThemeProvider.themeOf(context).data.textTheme.headline5.color,
              // ),
              SliverFixedExtentList(
                itemExtent: Globals.isLargeScreen(context)
                    ? MediaQuery.of(context).size.height
                    : MediaQuery.of(context).size.height * 0.7, // 1.34,
                delegate: SliverChildListDelegate(
                  [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Globals.isLargeScreen(context)
                          ? Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: topChildren,
                            )
                          : Column(
                              verticalDirection: VerticalDirection.up,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: topChildren,
                            ),
                    ),
                    // Padding(
                    //   padding: EdgeInsets.zero, //all(38.0),
                    //   child: skillsWidget(context),
                    // ),
                    Container(
                      height: MediaQuery.of(context).size.height,
                      child: Builder(
                        builder: (context) => getSkillsGrid(context),
                      ),
                      // margin:(Globals.isLargeScreen(context))?EdgeInsets.only(bottom: MediaQuery.of(context).size.height*0.45):EdgeInsets.zero,
                    ),
                    // Timeline(),
                    Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.03),
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.01),
                      height: MediaQuery.of(context).size.height * 1.5,
                      child: Builder(
                        builder: (context) => CustomPaint(
                          foregroundPainter: CurvePainter(false),
                          child: LayoutBuilder(
                            builder: (context, constraints) => Container(
                              height: MediaQuery.of(context)
                                  .size
                                  .height, // * 0.6256,
                              // child: projectGridView(context, _projectsList),
                              child: Stack(
                                clipBehavior: Clip.none,
                                fit: StackFit.expand,
                                children: [
                                  Positioned(
                                    bottom: MediaQuery.of(context).size.height *
                                        0.9,
                                    child: Container(
                                      // margin:EdgeInsets.only(bottom:Globals.isLargeScreen(context)?MediaQuery.of(context).size.height*0.1:0),
                                      padding: EdgeInsets.only(
                                          left: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                          // top: MediaQuery.of(context)
                                          //         .size
                                          //         .width *
                                          //     0.01,
                                          bottom: Globals.isLargeScreen(context)
                                              ? 0
                                              : MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.009),
                                      child: Text(
                                        'Projects',
                                        textAlign: TextAlign.left,
                                        style: ThemeProvider.themeOf(context)
                                                    .id ==
                                                'dark'
                                            ? GoogleFonts.robotoSlab(
                                                fontSize: Globals.isLargeScreen(
                                                        context)
                                                    ? MediaQuery.of(context)
                                                            .size
                                                            .aspectRatio *
                                                        24.25
                                                    : 19,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600,
                                              )
                                            : GoogleFonts.robotoSlab(
                                                fontSize: Globals.isLargeScreen(
                                                        context)
                                                    ? MediaQuery.of(context)
                                                            .size
                                                            .aspectRatio *
                                                        24.25
                                                    : 19,
                                                color: Color(0xff00305b),
                                                fontWeight: FontWeight.w600),
                                        // Theme.of(context).primaryTextTheme.subtitle1
                                      ),
                                    ),
                                  ),
                                  // setState(() {
                                  //   list =
                                  //       new List<double>.generate(4, (i) {
                                  //     return 0.5 * i +
                                  //         constraints.maxHeight * 0.07;
                                  //   });
                                  // }),
                                  // Text('hellp',style: TextStyle(fontSize:100.1*index)),
                                   for (int index = 0; index < 4; index++)
                                    AnimatedPositioned(
                                      duration: Duration(seconds: 10),
                                      child: Container(
                                        child: Card(
                                          elevation: 5,
                                          shadowColor:
                                              ThemeProvider.themeOf(context)
                                                          .id ==
                                                      'dark'
                                                  ? Colors.grey[400]
                                                  : Colors.black87,
                                          child: Text(
                                            'hi',
                                            style: TextStyle(
                                              color:
                                                  ThemeProvider.themeOf(context)
                                                              .id ==
                                                          'dark'
                                                      ? Colors.white
                                                      : Color(0xff001b34),
                                              fontSize: 20,
                                            ),
                                          ),
                                          color: Colors
                                              .white, //ThemeProvider.themeOf(context).id=='dark'? Color(0xff171717):Colors.white,
                                        ),
                                        color: Colors.transparent,
                                      ),
                                      height: 150,
                                      width: 300,
                                      top:
                                          constraints.maxHeight *  ( 0.07+(0.25*index)),
                                      left: constraints.minWidth * 0.115,
                                      // bottom: MediaQuery.of(context).size.height *
                                      //     0.1,
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Builder(
                        builder: (context) => CustomPaint(
                          foregroundPainter: CurvePainter(true),
                          child: LayoutBuilder(
                            builder: (context, constraints) => Container(
                              margin: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.width * 0.03,
                              ),
                              height: MediaQuery.of(context).size.height,
                              child: Stack(
                                children: [
                                  for (int index = 0; index < 3; index++)
                                  AnimatedPositioned(
                                    duration: Duration(seconds: 10),
                                    child: Container(
                                      child: Card(
                                        elevation: 5,
                                        shadowColor:
                                            ThemeProvider.themeOf(context).id ==
                                                    'dark'
                                                ? Colors.grey[400]
                                                : Colors.black87,
                                        child: Text(
                                          'hi',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20),
                                        ),
                                        color:
                                            ThemeProvider.themeOf(context).id ==
                                                    'dark'
                                                ? Color(0xff171717)
                                                : Colors.white,
                                      ),
                                      color: Colors.transparent,
                                    ),
                                    height: 150,
                                    width: 300,
                                    top: constraints.minHeight *( 0.07+(0.25*index)),
                                    left: constraints.minWidth * 0.087,
                                    // bottom: MediaQuery.of(context).size.height *
                                    //     0.1,
                                  ),
                                  footer(context),
                                  // Align(
                                  //   alignment: Alignment.bottomCenter,
                                  //   child: Row(
                                  //     mainAxisAlignment:
                                  //         MainAxisAlignment.center,
                                  //     children: [
                                  //       Text(
                                  //         "Built with",
                                  //         style: GoogleFonts.roboto(
                                  //             fontSize: 20,
                                  //             fontWeight: FontWeight.bold),
                                  //       ),
                                  //       Icon(
                                  //         Icons.favorite,
                                  //         color: Colors.blue[900],
                                  //         size: 21,
                                  //       ),
                                  //       Text(
                                  //         " by Monikinderjit Singh",
                                  //         style: GoogleFonts.robotoSlab(
                                  //             fontSize: 21,
                                  //             fontWeight: FontWeight.w600),
                                  //       ),
                                  //       // socialMediaRow(),
                                  //     ],
                                  //   ),
                                  // )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     Text(
                    //       "Built with",
                    //       style: GoogleFonts.roboto(
                    //           fontSize: 20, fontWeight: FontWeight.bold),
                    //     ),
                    //     Icon(
                    //       Icons.favorite,
                    //       color: Colors.blue[900],
                    //       size: 21,
                    //     ),
                    //     Text(
                    //       " by Monikinderjit Singh",
                    //       style: GoogleFonts.robotoSlab(
                    //           fontSize: 21, fontWeight: FontWeight.w600),
                    //     ),
                    //     // socialMediaRow(),
                    //   ],
                    // ),
                    //  ),
                    // ),
                    // Container(
                    //   width: 150,
                    //   height: 100,
                    //   child: ClipPolygon(
                    //     child: Container(
                    //       color: Colors.white,
                    //       height: 100,
                    //       width: 150,
                    //       child: Text('hi'),
                    //     ),
                    //     sides: 5,
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: 100,
                    //   width: 150,
                    //   // constraints: BoxConstraints(maxHeight: 100,maxWidth: 150),
                    //   child: Card(
                    //     child: Text('hi'),
                    //     color: Colors.white,
                    //   ),
                    // )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
    //  Scrollbar(
    //   thickness: 12,
    //   isAlwaysShown: true,
    //   radius: Radius.circular(6),
    //   controller: _scrollController,
    //   child: Container(
    //     height: MediaQuery.of(context).size.height * 1.28,
    //     child: ListView(
    //       physics:
    //           FixedExtentScrollPhysics(), //NeverScrollableScrollPhysics(),
    //       controller: _scrollController,
    //       // offAxisFraction: 0.2,
    //       // diameterRatio: 17.5,
    //       // clipBehavior: Clip.hardEdge,
    //       itemExtent: Globals.isSmallScreen(context)
    //           ? MediaQuery.of(context).size.height * 1.2
    //           : MediaQuery.of(context).size.height * 1,
    //       children: [
    //         Container(
    //           width: MediaQuery.of(context).size.width,
    //           child: Globals.isLargeScreen(context)
    //               ? Row(
    //                   crossAxisAlignment: CrossAxisAlignment.center,
    //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                   children: topChildren,
    //                 )
    //               : Column(
    //                   verticalDirection: VerticalDirection.up,
    //                   crossAxisAlignment: CrossAxisAlignment.center,
    //                   mainAxisAlignment: MainAxisAlignment.start,
    //                   children: topChildren,
    //                 ),
    //         ),
    //         // Padding(
    //         //   padding: EdgeInsets.zero, //all(38.0),
    //         //   child: skillsWidget(context),
    //         // ),
    //         Builder(builder: (context) => getSkillsGrid(context)),
    //         // Timeline(),
    //         Align(
    //           alignment: Alignment.center,
    //           child: CustomPaint(
    //             foregroundPainter: CurvePainter(),
    //             child: Container(
    //               margin: EdgeInsets.symmetric(
    //                 horizontal: MediaQuery.of(context).size.width * 0.03,
    //               ),
    //               color: Colors.transparent,
    //               height: MediaQuery.of(context).size.height * 0.6256,
    //               // child: projectGridView(context, _projectsList),
    //             ),
    //           ),
    //         ),
    //         Row(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: [
    //             Text(
    //               "Built with",
    //               style: GoogleFonts.roboto(
    //                   fontSize: 20, fontWeight: FontWeight.bold),
    //             ),
    //             Icon(
    //               Icons.favorite,
    //               color: Colors.blue[900],
    //               size: 21,
    //             ),
    //             Text(
    //               " by Monikinderjit Singh",
    //               style: GoogleFonts.robotoSlab(
    //                   fontSize: 21, fontWeight: FontWeight.w600),
    //             ),
    //             // socialMediaRow(),
    //           ],
    //         ),
    //       ],
    //     ),
    //   ),
    // ),
    // );
  }
}
