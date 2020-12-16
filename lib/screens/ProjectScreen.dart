import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_web_scrollbar/flutter_web_scrollbar.dart';

import './AboutScreen.dart';
import '../widgets/footer.dart';
import '../widgets/appBarWidget.dart';
import '../info/projects.dart';

class ProjectScreen extends StatefulWidget {
  static const String routeName = '/ProjectScreen';

  @override
  _ProjectScreenState createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
  ScrollController _scrollController = ScrollController();
  List<Map<String, dynamic>> _projectsList = projectsList;
  @override
  void initState() {
    //Initialize the  scrollController
    _scrollController = ScrollController();
    super.initState();
  }

  void scrollCallBack(DragUpdateDetails dragUpdate) {
    setState(() {
      // Note: 3.5 represents the theoretical height of all my scrollable content. This number will vary for you.
      _scrollController.position.moveTo(dragUpdate.globalPosition.dy * 1.4);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(context),
      backgroundColor: Color.fromRGBO(189, 224, 255, 1),
      body:
          // Stack(
          //   children: [
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
                    child: GridView.builder(
                      shrinkWrap: true,
                      primary: false,
                      keyboardDismissBehavior:
                          ScrollViewKeyboardDismissBehavior.onDrag,
                      // physics: NeverScrollableScrollPhysics(),
                      itemCount: _projectsList.length + 1,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 1.88,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 15,
                      ),
                      itemBuilder: (ctx, index) {
                        if (index < 5)
                          return Container(
                            height: MediaQuery.of(context).size.width * 0.17,
                            width: MediaQuery.of(context).size.width * 0.32,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                            color: Colors.transparent,
                            child: GestureDetector(
                              onTap: () {
                                AboutScreen.openLink(
                                    _projectsList[index]['projectLink']);
                              },
                              child: Card(
                                elevation: 10.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                ),
                                color: Colors.blue[800],
                                child: Column(
                                  children: [
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.057,
                                      alignment: Alignment.center,
                                      child: Text(
                                        _projectsList[index]['title'],
                                        style: GoogleFonts.roboto(
                                            color: Colors.white, fontSize: 34),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Divider(
                                      color: Colors.white10,
                                      thickness: 2,
                                    ),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.128,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.02),
                                      child: Text(
                                        _projectsList[index]['description'],
                                        style: GoogleFonts.openSans(
                                          color: Colors.white,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.centerRight,
                                      padding: EdgeInsets.only(
                                          right: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.02),
                                      child: Text(
                                        _projectsList[index]['startedIn'],
                                        textAlign: TextAlign.right,
                                        style: GoogleFonts.orienta(
                                          color: Colors.white60,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                    Divider(
                                      color: Colors.white70,
                                      thickness: 1,
                                    ),
                                    Expanded(
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          RaisedButton(
                                            elevation: 20,
                                            color: Colors.transparent,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(20),
                                              ),
                                            ),
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.159,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.09,
                                              child: Text(
                                                "Tech Used",
                                                textAlign: TextAlign.center,
                                                style: GoogleFonts.aladin(
                                                    color: Colors.white,
                                                    fontSize: 27,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ),
                                            onPressed: () {},
                                          ),
                                          Container(
                                            height: 110,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.001,
                                            color: Colors.white70,
                                          ),
                                          RaisedButton(
                                            onPressed: () {},
                                            elevation: 20,
                                            color: Colors.transparent,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                bottomRight:
                                                    Radius.circular(20),
                                              ),
                                            ),
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.123,
                                              child: GridView.builder(
                                                physics:
                                                    NeverScrollableScrollPhysics(),
                                                gridDelegate:
                                                    SliverGridDelegateWithFixedCrossAxisCount(
                                                  crossAxisCount: 2,
                                                  childAspectRatio: 2.7,
                                                ),
                                                itemBuilder: (ctx, i) {
                                                  if (i < 2)
                                                    return Image.asset(
                                                      _projectsList[index]
                                                          ['techUsed'][i],
                                                      height: 1,
                                                      width: 1,
                                                      fit: BoxFit.fitHeight,
                                                    );
                                                  return null;
                                                },
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

                        return Container(
                          height: MediaQuery.of(context).size.width * 0.17,
                          width: MediaQuery.of(context).size.width * 0.32,
                          color: Colors.blue[900],
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                            color: Colors.blue[900],
                            child: FlatButton(
                              color: Colors.blue[900],
                              child: Text(
                                "More Projects",
                                style: GoogleFonts.oswald(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 50,
                                  color: Colors.blue,
                                ),
                              ),
                              onPressed: () {
                                AboutScreen.openLink(
                                    "https://github.com/Monik09?tab=repositories");
                              },
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  footer(context),
                ],
              ),
            ),
          ),
        ),
      ),
      // Container(
      //   height: MediaQuery.of(context).size.height*1.4,
      //   child: FlutterWebScroller(
      //     //Pass a reference to the ScrollCallBack function into the scrollbar
      //     scrollCallBack,

      //     //Add optional values
      //     scrollBarBackgroundColor: Colors.transparent,
      //     scrollBarWidth: 20.0,
      //     dragHandleColor: Colors.red,
      //     dragHandleBorderRadius: 2.0,
      //     dragHandleHeight: 397.0,
      //     dragHandleWidth: 15.0,
      //   ),
      // ),
      // ],
      // ),
    );
  }
}
