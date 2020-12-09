import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/appBarWidget.dart';

class ProjectScreen extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();
  static const String routeName = '/ProjectScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(context),
      backgroundColor: Color.fromRGBO(189, 224, 255, 1),
      body: Scrollbar(
        isAlwaysShown: true,
        // thickness: 20,
        controller: _scrollController,
        child: SafeArea(
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
                            left: MediaQuery.of(context).size.width * 0.01),
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
                          'assets/images/work_re.png',
                          scale: 0.74,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    color: Colors.white,
                    height: MediaQuery.of(context).size.height * 0.680,
                    child: GridView.builder(
                      controller: _scrollController,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 1.88,
                      ),
                      itemBuilder: (ctx, index) {
                        if (index < 5)
                          return Container(
                            height: MediaQuery.of(context).size.width * 0.17,
                            width: MediaQuery.of(context).size.width * 0.32,
                            color: Colors.transparent,
                            child: Card(
                              color: Colors.blue[800],
                              child: Column(
                                children: [
                                  Text('ABC'),
                                  Text('date'),
                                ],
                              ),
                            ),
                          );
                        else if (index == 5) {
                          return Container(
                            height: MediaQuery.of(context).size.width * 0.17,
                            width: MediaQuery.of(context).size.width * 0.32,
                            color: Colors.transparent,
                            child: Card(
                              color: Colors.blue[800],
                              child: RaisedButton(
                                child: Text(
                                  "More Projects",
                                  style: GoogleFonts.oswald(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 50,
                                    color: Colors.blue,
                                  ),
                                ),
                                onPressed: null,
                              ),
                            ),
                          );
                        } else
                          return null;
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
