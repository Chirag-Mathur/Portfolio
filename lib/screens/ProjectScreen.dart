import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/appBarWidget.dart';

class ProjectScreen extends StatelessWidget {
  static const String routeName = '/ProjectScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(context),
      backgroundColor: Color.fromRGBO(189, 224, 255, 1),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 1.5,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width:MediaQuery.of(context).size.width*0.5,
                    height: MediaQuery.of(context).size.height * 0.2,
                    child: Text(
                      "Projects I created while learning and exploring different fields and in different courses..",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.tinos(
                        fontSize: 50,
                        color:Colors.blue[800],
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Container(child: Image.asset('assets/images/work_re.png',scale:0.74 ,),)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
