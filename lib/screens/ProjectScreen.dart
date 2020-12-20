import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/widgets/appDrawer.dart';

import '../widgets/projectsGrid.dart';
import '../widgets/footer.dart';
import '../widgets/appBarWidget.dart';
import '../info/globals.dart';

class ProjectScreen extends StatelessWidget {
  ProjectScreen({Key key}) : super(key: key);
  static const String routeName = '/ProjectScreen';
  static  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final List<Map<String, dynamic>> _projectsList = Globals.projectsList;
  final ScrollController _scrollController = ScrollController();
  final bool isHomePage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      key: scaffoldKey,
      drawer: appDrawer(context),
      appBar: appBarWidget(context, _scrollController, isHomePage,scaffoldKey),
      backgroundColor: Globals.backgroundColor,
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
                        style: GoogleFonts.tinos(
                          fontSize: 50,
                          color: Colors.blue[900], //Color(0xff3f3d56), // ,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Container(
                      child: Image.asset(
                        'assets/images/skills3.png',
                        scale:2,// 2.5,
                        fit:BoxFit.scaleDown,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.03,
                    ),
                    color: Colors.transparent,
                    height: MediaQuery.of(context).size.height * 0.6256,
                    child: projectGridView(context, _projectsList),
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
