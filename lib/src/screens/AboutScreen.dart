import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/main.dart';
import 'package:my_portfolio/src/screens/Timeline.dart';
import 'package:my_portfolio/src/widgets/LiteSwitch.dart';
import 'package:my_portfolio/src/widgets/appBarWidget.dart';
import 'package:my_portfolio/src/info/globals.dart';
import 'package:my_portfolio/src/widgets/footer.dart';
import 'package:my_portfolio/src/widgets/projectsCardWidget.dart';
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
  List<bool> isHovering = new List.filled(7, false);

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
    // print(MediaQuery.of(context).size.aspectRatio);
    // print(MediaQuery.of(context).size.height);
    List<Widget> topChildren = topAboutPageWidget(context, myImage1);
    Widget animatedPositionedProjectCard(
            BoxConstraints constraints, int index, bool isNextPage) =>
        AnimatedPositioned(
          curve: Curves.bounceOut,
          duration: Duration(milliseconds: 150),
          child: InkWell(
            onHover: (val) {
              // print('hght ${constraints.maxHeight}');
              // print("width ${constraints.maxWidth}");
              setState(() {
                isHovering[index] = !isHovering[index];
              });
            },
            onTap: () {
              Globals.openLink(
                // Globals.projectsList[index]['projectLink']
                documents[index]['projectLink'].toString(),
                );
              // print('pressed me');
            },
            child: projectsCardWidget(
                context, index, isHovering[index], isNextPage),
          ),
          height: Globals.isLargeScreen(context)
              ? 180
              : MediaQuery.of(context).size.width < 390
                  ? MediaQuery.of(context).size.width * 0.35
                  : 140, //constraints.maxHeight*0.17361,// 150,
          width: Globals.isLargeScreen(context)
              ? 350
              : MediaQuery.of(context).size.width < 390
                  ? MediaQuery.of(context).size.width * 0.70
                  : 300, //constraints.minWidth*0.20833,// 300,
          top: !isHovering[index]
              ? constraints.maxHeight * (0.07 + (0.25 * index))
              : constraints.maxHeight * (0.07 + (0.25 * index - 0.01)),
          left: Globals.isLargeScreen(context)
              ? index % 2 == 0
                  ? !isHovering[index]
                      ? constraints.minWidth * 0.4 +
                          constraints.minWidth * 0.115
                      : constraints.minWidth * 0.4 + constraints.minWidth * 0.12
                  : !isHovering[index]
                      ?constraints.minWidth * 0.36 - constraints.minWidth * 0.115
                      :constraints.minWidth * 0.36 - constraints.minWidth * 0.12
              : constraints.minWidth * 0.132,
        );
    return Scaffold(
      key: scaffoldKey1,
      drawer: Globals.isLargeScreen(context)
          ? null
          : appDrawer(context, _scrollController, isDark),
      backgroundColor:
          Theme.of(context).backgroundColor, //Globals.backgroundColorLight,
      appBar:
          appBarWidget(context, _scrollController, isHomePage, scaffoldKey1),
      floatingActionButtonLocation:
          // Globals.isLargeScreen(context)
          // ?
          FloatingActionButtonLocation.miniEndTop,
      // : FloatingActionButtonLocation.miniEndFloat,
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
                width: 100,
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
          : Container(
              margin: EdgeInsets.only(
                top: 60, //93
                right: 1,
              ),
              child: FloatingActionButton(
                tooltip: 'Toggle Theme',
                isExtended: true,
                child: Icon(
                  ThemeProvider.themeOf(context).id == 'dark'
                      ? Icons.nights_stay
                      : Icons.wb_sunny_sharp,
                  color: Colors.white,
                  size: 20,
                ),
                elevation: 4,
                mini: true,
                onPressed: () {
                  setState(() {
                    ThemeProvider.controllerOf(context).nextTheme();
                  });
                },
                backgroundColor: ThemeProvider.themeOf(context).id == 'dark'
                    ? Color(0xff26ABBF)
                    : Color(0xff204690),
              ),
            ),
      body: Scrollbar(
        thickness: Globals.isLargeScreen(context) ? 12 : 5,
        isAlwaysShown: true,
        radius: Radius.circular(6),
        controller: _scrollController,
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: CustomScrollView(
            // primary: false,
            controller: _scrollController,
            // shrinkWrap: true,
            slivers: [
              SliverFixedExtentList(
                itemExtent: Globals.isLargeScreen(context)
                    ? MediaQuery.of(context).size.height
                    : MediaQuery.of(context).size.height * 0.9, // 1.34,
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
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        maxHeight: MediaQuery.of(context).size.height,
                        minHeight: MediaQuery.of(context).size.height * 0.9,
                      ),
                      // height: MediaQuery.of(context).size.height,
                      child: Builder(
                        builder: (context) => getSkillsGrid(context),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.03),
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.01),
                      height: MediaQuery.of(context).size.height * 1.5,
                      child: Builder(
                        builder: (context) => CustomPaint(
                          foregroundPainter: TimelinePainter(false, context),
                          child: LayoutBuilder(
                            builder: (context, constraints) {
                              return Container(
                                height: MediaQuery.of(context)
                                    .size
                                    .height, // * 0.6256,
                                // child: projectGridView(context, _projectsList),
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  fit: StackFit.expand,
                                  children: [
                                    Positioned(
                                      top:
                                          0, //Globals.isLargeScreen(context)? MediaQuery.of(context).size.height *
                                      //0.1: MediaQuery.of(context).size.height *0.16,
                                      // bottom:
                                      //    Globals.isLargeScreen(context)? MediaQuery.of(context).size.height *
                                      //         0.9: MediaQuery.of(context).size.height *0.84,
                                      child: Container(
                                        padding: EdgeInsets.only(
                                            left: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.05,
                                            // top: MediaQuery.of(context)
                                            //         .size
                                            //         .width *
                                            //     0.01,
                                            bottom:
                                                Globals.isLargeScreen(context)
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
                                                  fontSize: Globals
                                                          .isLargeScreen(
                                                              context)
                                                      ? MediaQuery.of(context)
                                                              .size
                                                              .aspectRatio *
                                                          24.25
                                                      : 22,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w600,
                                                )
                                              : GoogleFonts.robotoSlab(
                                                  fontSize: Globals
                                                          .isLargeScreen(
                                                              context)
                                                      ? MediaQuery.of(context)
                                                              .size
                                                              .aspectRatio *
                                                          24.25
                                                      : 22,
                                                  color: Color(0xff00305b),
                                                  fontWeight: FontWeight.w600),
                                          // Theme.of(context).primaryTextTheme.subtitle1
                                        ),
                                      ),
                                    ),
                                    for (int i = 0; i < 4; i++)
                                      animatedPositionedProjectCard(
                                          constraints, i, false),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Builder(
                        builder: (context) => CustomPaint(
                          foregroundPainter: TimelinePainter(true, context),
                          child: LayoutBuilder(
                            builder: (context, constraints) => Container(
                              height: MediaQuery.of(context).size.height,
                              child: Stack(
                                children: [
                                  for (int i = 0; i < 3; i++)
                                    animatedPositionedProjectCard(
                                        constraints, i, true),
                                  Align(
                                      alignment: Alignment.bottomRight,
                                      child: footer(context)),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
