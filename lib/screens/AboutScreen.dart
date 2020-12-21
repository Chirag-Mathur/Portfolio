import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

import '../info/globals.dart';
import '../widgets/socialMediaRow.dart';
import '../widgets/appDrawer.dart';
import '../widgets/topAboutWidget.dart';
import '../widgets/Skills.dart';
import '../widgets/appBarWidget.dart';

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
      backgroundColor: Globals.backgroundColor,
      appBar:
          appBarWidget(context, _scrollController, isHomePage, scaffoldKey1),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton:
          Globals.isLargeScreen(context) ? socialMediaButton() : null,
      body: Scrollbar(
        thickness: 12,
        isAlwaysShown: true,
        radius: Radius.circular(6),
        controller: _scrollController,
        child: Container(
          height: MediaQuery.of(context).size.height * 1.28,
          child: ListWheelScrollView(
            controller: _scrollController,
            // offAxisFraction: 0.2,
            diameterRatio: 17.5,
            clipBehavior: Clip.hardEdge,
            itemExtent: Globals.isSmallScreen(context)
                ? MediaQuery.of(context).size.height * 1.5
                : MediaQuery.of(context).size.height * 1.3,
            children: [
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
        ),
      ),
    );
  }
}
