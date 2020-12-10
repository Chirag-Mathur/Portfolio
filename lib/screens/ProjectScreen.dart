import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_web_scrollbar/flutter_web_scrollbar.dart';

import '../widgets/footer.dart';
import '../widgets/appBarWidget.dart';

class ProjectScreen extends StatefulWidget {
  static const String routeName = '/ProjectScreen';

  @override
  _ProjectScreenState createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
  ScrollController _scrollController = ScrollController();
  @override
  void initState() {
    //Initialize the  scrollController
    _scrollController = ScrollController();
    super.initState();
  }

  void scrollCallBack(DragUpdateDetails dragUpdate) {
    setState(() {
      // Note: 3.5 represents the theoretical height of all my scrollable content. This number will vary for you.
      _scrollController.position.moveTo(dragUpdate.globalPosition.dy *1.4);
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
                  height: MediaQuery.of(context).size.height * 1.4,
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
                              'assets/images/work_re.png',
                              scale: 0.74,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.03,
                        ),
                        color: Colors.white,
                        height: MediaQuery.of(context).size.height * 0.6750,
                        child: GridView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            childAspectRatio: 1.88,
                          ),
                          itemBuilder: (ctx, index) {
                            if (index < 5)
                              return Container(
                                height:
                                    MediaQuery.of(context).size.width * 0.17,
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
                                height:
                                    MediaQuery.of(context).size.width * 0.17,
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
                      Expanded(
                        child: Align(
                          alignment: Alignment
                              .bottomCenter, //FractionalOffset.bottomCenter,
                          child: Padding(
                              padding: EdgeInsets.only(bottom: 10.0),
                              child: footer(context) //Your widget here,
                              ),
                        ),
                      ),
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
