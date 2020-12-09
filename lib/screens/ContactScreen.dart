import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/widgets/footer.dart';

import '../widgets/appBarWidget.dart';

class ContactScreen extends StatelessWidget {
  static const String routeName = "/ContactScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(context),
      backgroundColor: Color.fromRGBO(189, 224, 255, 1),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              color: Color(0xff71bcff),
              margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.16,
                vertical: MediaQuery.of(context).size.height * 0.1,
              ),
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 0.7,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,

                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Contact with me if you wanna like to work together :)',
                    style: GoogleFonts.oswald(
                      fontSize: 40,
                      color: Colors.blue[900],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  Container(
                    color: Color(0xff71bcff),
                    margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.01),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.2,
                          child: ListTile(
                            title: Text('Name'),
                            trailing: Text('Enter here'),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.2,
                          child: ListTile(
                            title: Text('Email'),
                            trailing: Text('Enter here'),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.2,
                          child: ListTile(
                            title: Text('Message'),
                            trailing: Text('Enter here'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.07,
                  ),
                  Center(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.04,
                      width: MediaQuery.of(context).size.width * 0.1,
                      child: RaisedButton(
                        child: Text("Submit And Connect"),
                        onPressed: null,
                      ),
                    ),
                  ),
                  //  Align(
                  //     alignment: Alignment.bottomCenter,
                  //     child: footer(context),
                  //   ),
                ],
              ),
            ),
            
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,//FractionalOffset.bottomCenter,
                      child: Padding(
                          padding: EdgeInsets.only(bottom: 10.0),
                          child: footer(context) //Your widget here,
                          ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
