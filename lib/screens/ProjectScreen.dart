import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/widgets/projectsGrid.dart';

import '../widgets/footer.dart';
import '../widgets/appBarWidget.dart';
import '../info/projects.dart';

class ProjectScreen extends StatelessWidget {
  static const String routeName = '/ProjectScreen';
final ScrollController _scrollController = ScrollController();
 final List<Map<String, dynamic>> _projectsList = projectsList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(context),
      backgroundColor: Color.fromRGBO(189, 224, 255, 1),
      body:
          Scrollbar(
        thickness: 12,
        radius: Radius.circular(6),
        // controller: _scrollController,
        // isAlwaysShown: true,
        child: Container(
          child: SingleChildScrollView(
            controller: _scrollController,
            child: Container(
              height: MediaQuery.of(context).size.height * 1.6,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.01,
                        ),
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: MediaQuery.of(context).size.height * 0.2,
                        child: Text(
                          "Projects I created while learning and exploring different fields and in different courses..",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.tinos(
                            fontSize: 50,
                            color: Colors.blue[800],
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Container(
                        child: Image.asset(
                          'assets/images/skills3.png',
                          scale: 0.74,
                        ),
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: MediaQuery.of(context).size.height * 0.8,
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.03,
                    ),
                    color: Colors.transparent,
                    height: MediaQuery.of(context).size.height * 0.6256,
                    child:projectGridView(context, _projectsList),
                  ),
                  footer(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
