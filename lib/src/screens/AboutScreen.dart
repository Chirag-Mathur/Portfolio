import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/src/screens/Timeline.dart';
import 'package:my_portfolio/src/widgets/LiteSwitch.dart';
import 'package:my_portfolio/src/widgets/Skills.dart';
import 'package:my_portfolio/src/widgets/appBarDesktopTablet.dart';
import 'package:my_portfolio/src/widgets/appBarWidget.dart';
import 'package:my_portfolio/src/info/globals.dart';
import 'package:my_portfolio/src/widgets/skills_grid.dart';
import 'package:my_portfolio/src/widgets/topAboutWidget.dart';
import 'package:my_portfolio/src/widgets/appDrawer.dart';
import 'package:smooth_scroll_web/smooth_scroll_web.dart';
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

  Widget build(BuildContext context) {
    ScrollController _scrollController = ScrollController();

    List<Widget> topChildren = topAboutPageWidget(context, myImage1);
    return Scaffold(
      key: scaffoldKey1,
      drawer: Globals.isLargeScreen(context) ? null : appDrawer(context),
      backgroundColor:
          Theme.of(context).backgroundColor, //Globals.backgroundColorLight,
      appBar:
          appBarWidget(context, _scrollController, isHomePage, scaffoldKey1),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
      floatingActionButton: Globals.isLargeScreen(context)
          ? Container(
              margin: EdgeInsets.only(
                top:60,//93
                right: 20,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      blurRadius: 3,
                    ),
                    BoxShadow(color: Colors.grey[900],blurRadius: 2)
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
                  ThemeProvider.controllerOf(context).nextTheme();
                },
              ),
            )
          : null,
      body: Scrollbar(
        thickness: 12,
        isAlwaysShown: true,
        radius: Radius.circular(6),
        controller: _scrollController,
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: CustomScrollView(
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
                itemExtent: MediaQuery.of(context).size.height,
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
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: topChildren,
                            ),
                    ),
                    // Padding(
                    //   padding: EdgeInsets.zero, //all(38.0),
                    //   child: skillsWidget(context),
                    // ),
                    Builder(builder: (context) => getSkillsGrid(context)),
                    // Timeline(),
                    Align(
                      alignment: Alignment.center,
                      child: CustomPaint(
                        foregroundPainter: CurvePainter(),
                        child: Container(
                          margin: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.03,
                          ),
                          color: Colors.transparent,
                          height: MediaQuery.of(context).size.height * 0.6256,
                          // child: projectGridView(context, _projectsList),
                        ),
                      ),
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
                    //  ),
                    // ),
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
