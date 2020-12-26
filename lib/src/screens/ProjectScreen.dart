import 'package:flutter/material.dart';
import 'package:my_portfolio/src/widgets/footer.dart';
import 'package:my_portfolio/src/info/globals.dart';
import 'package:my_portfolio/src/screens/Timeline.dart';
import 'package:my_portfolio/src/widgets/LiteSwitch.dart';
import 'package:my_portfolio/src/widgets/appBarWidget.dart';
import 'package:my_portfolio/src/widgets/appDrawer.dart';
import 'package:theme_provider/theme_provider.dart';

class ProjectScreen extends StatelessWidget {
  ProjectScreen({Key key}) : super(key: key);
  static const String routeName = '/ProjectScreen';
  static GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final ScrollController _scrollController = ScrollController();
  final bool isHomePage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Globals.isLargeScreen(context) ? null : appDrawer(context,_scrollController,true),
      appBar: appBarWidget(context, _scrollController, isHomePage, scaffoldKey,),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndTop,
      floatingActionButton: Globals.isLargeScreen(context)
          ? Container(
              margin: EdgeInsets.only(
                top: 60,
                right: 20,
              ),
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
      backgroundColor: Theme.of(context).backgroundColor,
      body: Scrollbar(
        thickness: 12,
        radius: Radius.circular(6),
        child: Container(
          height: MediaQuery.of(context).size.height * 1.3,
          child: ListView(
            controller: _scrollController,
            itemExtent: MediaQuery.of(context).size.height * 0.8,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      // padding: EdgeInsets.only(
                      //   left: MediaQuery.of(context).size.width * 0.0061,
                      // ),
                      alignment: Alignment.centerLeft,
                      width: MediaQuery.of(context).size.width * 0.49,
                      height: MediaQuery.of(context).size.height * 0.5,
                      child: Text(
                        "Projects I created while learning and exploring different fields and in different courses..",
                        textAlign: TextAlign.justify,
                        style: Theme.of(context).textTheme.bodyText2,
                        // GoogleFonts.tinos(
                        //   fontSize: 50,
                        //   color: Colors.blue[900], //Color(0xff3f3d56), // ,
                        //   fontWeight: FontWeight.w700,
                        // ),
                      ),
                    ),
                    Container(
                      child: Image.asset(
                        'assets/images/skills3.png',
                        scale: 2, // 2.5,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  // Container(
                  //   margin: EdgeInsets.symmetric(
                  //     horizontal: MediaQuery.of(context).size.width * 0.03,
                  //   ),
                  //   color: Colors.transparent,
                  //   height: MediaQuery.of(context).size.height * 0.6256,
                  //   child: projectGridView(context, _projectsList),
                  // ),
                  Align(
                    alignment: Alignment.center,
                    child: CustomPaint(
                      foregroundPainter: CurvePainter(false),
                      child: Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.03,
                        ),
                        color: Colors.transparent,
                        height: MediaQuery.of(context).size.height * 0.6256,
                        // child: projectGridView(context, _projectsList),
                      ),
                    ),
                  ),
                  footer(context),
                ],
              ),
              // footer(context),
            ],
          ),
        ),
      ),
    );
  }
}
