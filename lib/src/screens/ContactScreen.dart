import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/src/info/globals.dart';
import 'package:my_portfolio/src/screens/Timeline.dart';
import 'package:my_portfolio/src/widgets/socialMediaRow.dart';
import 'package:theme_provider/theme_provider.dart';

class ContactScreen extends StatefulWidget {
  static const String routeName = "/ContactScreen";

  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  final firestoreInstance = FirebaseFirestore.instance;

  final bool isHomePage = false;
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _messageController = TextEditingController();
  final GlobalKey<FormFieldState> _formKey = GlobalKey<FormFieldState>();
  final GlobalKey<FormFieldState> _nameKey = GlobalKey<FormFieldState>();
  final GlobalKey<FormFieldState> _emailKey = GlobalKey<FormFieldState>();
  final GlobalKey<FormFieldState> _messageKey = GlobalKey<FormFieldState>();
  bool _isAutoEnabled = false;
  bool _isSubmitSuccess = false;
  bool _isLoading = true;

  FocusNode nodeName = FocusNode();
  FocusNode nodeMessage = FocusNode();
  FocusNode nodeEmail = FocusNode();
  FocusNode nodeButton = FocusNode();
  // String name, email, message;
  Widget contactWidget(BuildContext context, BoxConstraints constraints) {
    return Container(
        width: Globals.isLargeScreen(context)
            ? constraints.maxWidth * 0.5
            : constraints.maxWidth,
        height: constraints.maxHeight,
        color: ThemeProvider.themeOf(context).id == 'dark'
            ? Colors.black54
            : Colors
                .white70, //Colors.grey[200],// Color(0xff26ABBF),// Colors.grey[600],
        child: !_isSubmitSuccess
            ? Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(12),
                    child: FittedBox(
                      child: Text(
                        "Let's connect!!",
                        style: TextStyle(
                          fontSize:Globals.isLargeScreen(context)? 30:24,
                          color: ThemeProvider.themeOf(context).id == 'dark'
                              ? Colors.white
                              : Colors.pink,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Globals.isLargeScreen(context)
                        ? constraints.minHeight * 0.056
                        : constraints.minHeight * 0.03,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    // widthFactor: 7,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: FittedBox(
                        child: Text(
                          "Name",
                          style: TextStyle(
                            fontSize:Globals.isLargeScreen(context)? 23:18,
                            color: ThemeProvider.themeOf(context).id == 'dark'
                                ? Color(0xff26ABBF)
                                : Colors.blue[900],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: constraints.minHeight * 0.015,
                  ),
                  SizedBox(
                    width: Globals.isLargeScreen(context)
                        ? constraints.maxWidth * 0.36
                        : constraints.maxWidth * 0.9,
                    child: TextFormField(
                      focusNode: nodeName,
                      key: _nameKey,
                      decoration: InputDecoration(
                        labelText: 'Name',
                        border: OutlineInputBorder(),
                        fillColor: Colors.pink,
                      ),
                      controller: _nameController,
                      textCapitalization: TextCapitalization.words,
                      keyboardType: TextInputType.name,
                      autovalidateMode: _isAutoEnabled
                          ? AutovalidateMode.onUserInteraction
                          : AutovalidateMode.disabled,
                      validator: (name) {
                        return (name.length == 0 || name.length<=2)
                            ? "Name can't be of length 0 or less than 2"
                            : null;
                      },
                      onEditingComplete: () {
                        FocusScope.of(context).requestFocus(nodeEmail);
                      },
                    ),
                  ),
                  SizedBox(
                    height:Globals.isLargeScreen(context)? constraints.minHeight * 0.035: constraints.minHeight * 0.02,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    // widthFactor: 7,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: FittedBox(
                        child: Text(
                          "Email",
                          style: TextStyle(
                            fontSize:Globals.isLargeScreen(context)? 23:18,
                            color: ThemeProvider.themeOf(context).id == 'dark'
                                ? Color(0xff26ABBF)
                                : Colors.blue[900],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: constraints.minHeight * 0.015,
                  ),
                  SizedBox(
                    width: Globals.isLargeScreen(context)
                        ? constraints.maxWidth * 0.36
                        : constraints.maxWidth * 0.9,
                    child: TextFormField(
                      focusNode: nodeEmail,
                      key: _emailKey,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                        fillColor: Colors.pink,
                      ),
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      validator: (email) {
                        if (email.length == 0) {
                          return "Email's length can't be 0";
                        }
                        if (!(email.contains('@') &&
                            (email.contains('.com') ||
                                email.contains('.in') ||
                                email.contains('.edu') ||
                                email.contains(".org")))) {
                          return "Please provide a valid email address!";
                        }
                        return null;
                      },
                      autovalidateMode: _isAutoEnabled
                          ? AutovalidateMode.onUserInteraction
                          : AutovalidateMode.disabled,
                      onEditingComplete: () {
                        FocusScope.of(context).requestFocus(nodeMessage);
                      },
                    ),
                  ),
                  SizedBox(
                    height: constraints.minHeight * 0.035,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    // widthFactor: 3,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: FittedBox(
                        child: Text(
                          "Message",
                          style: TextStyle(
                            fontSize:Globals.isLargeScreen(context)? 23:18,
                            color: ThemeProvider.themeOf(context).id == 'dark'
                                ? Color(0xff26ABBF)
                                : Colors.blue[900],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: constraints.minHeight * 0.015,
                  ),
                  SizedBox(
                    width: Globals.isLargeScreen(context)
                        ? constraints.maxWidth * 0.36
                        : constraints.maxWidth * 0.9,
                    child: TextFormField(
                      focusNode: nodeMessage,
                      key: _messageKey,
                      maxLines: 3,
                      keyboardType: TextInputType.text,
                      textCapitalization: TextCapitalization.sentences,
                      decoration: InputDecoration(
                        labelText: 'Message',
                        border: OutlineInputBorder(),
                        fillColor: Colors.pink,
                      ),
                      controller: _messageController,
                      autovalidateMode: _isAutoEnabled
                          ? AutovalidateMode.onUserInteraction
                          : AutovalidateMode.disabled,
                      validator: (message) {
                        if (message.length < 7) {
                          return "Provide a message of length more than 7";
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: constraints.maxHeight * 0.05,
                  ),
                  ElevatedButton(
                      child: Text("Connect"),
                      onPressed: () {
                        print("Pressed");
                        setState(() {
                          _isAutoEnabled = true;
                        });
                        if (_nameKey.currentState.validate() &&
                            _emailKey.currentState.validate() &&
                            _messageKey.currentState.validate()) {
                          print(
                              "Success-->${_nameKey.currentState.value}   ${_emailKey.currentState.value}  ${_messageKey.currentState.value}");
                          setState(() {
                            _isSubmitSuccess = true;
                            startTimer();
                          });
                        }
                        // if (_formKey.currentState.validate()) {
                        //   print('Success');
                        // } else {
                        //   print("Failed validation");
                        // }
                        // submitData(_nameController.text, _emailController.text,
                        //     _messageController.text);
                      }),
                ],
              )
            : Align(
                alignment: Alignment.center,
                child: _isLoading
                    ? CircularProgressIndicator()
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Thanks for your time!!',
                            style: GoogleFonts.openSans(
                              fontSize: 27,
                              color: ThemeProvider.themeOf(context).id == 'dark'
                                  ? Color(0xff26ABBF)
                                  : Colors.blue[900],
                            ),
                          ),
                          Text('Have a good day :)!!',
                              style: GoogleFonts.openSans(
                                fontSize: 27,
                                color:
                                    ThemeProvider.themeOf(context).id == 'dark'
                                        ? Color(0xff26ABBF)
                                        : Colors.blue[900],
                              )),
                        ],
                      ),
              ));
  }

  void submitData(String name, String email, String message) {
    firestoreInstance.collection("contaceMe").add({
      "Name": name,
      "Email": email,
      "Message": message,
      "Time": DateTime.now()
    }).then((value) {
      print("Success");
    });
  }

  void startTimer() {
    Timer.periodic(const Duration(seconds: 2), (t) {
      print(t);
      setState(() {
        _isLoading = false; //set loading to false
      });
      t.cancel(); //stops the timer
    });
  }

  @override
  void initState() {
    // startTimer();  //start the timer on loading
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Stack(children: [
        // if (Globals.isSmallScreen(context))
        //   CircleAvatar(
        //     backgroundImage: AssetImage(
        //       "assets/images/me4.jpg",
        //     ),
        //     radius: 45,
        //   ),
        Globals.isLargeScreen(context)
            ? CustomPaint(
                foregroundPainter: ContactDialogPainter(context),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.7,
                  width: MediaQuery.of(context).size.width * 0.6,
                  //  color:ThemeProvider.themeOf(context).id=='dark'?Colors.black54:Colors.white70,
                  child: LayoutBuilder(
                    builder: (context, constraints) => Row(
                      children: [
                        Container(
                          width: constraints.maxWidth * 0.5,
                          height: constraints.maxHeight,
                          color: ThemeProvider.themeOf(context).id == 'dark'
                              ? Colors.black
                              : Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage(
                                  "assets/images/me4.jpg",
                                ),
                                radius: constraints.minWidth * 0.1,
                              ),
                              SizedBox(
                                height: constraints.maxHeight * 0.01,
                              ),
                              Text(
                                "Monikinderjit Singh",
                                style: Theme.of(context).textTheme.headline1,
                              ),
                              SizedBox(
                                height: constraints.maxHeight * 0.02,
                              ),
                              socialMediaRow(context, 35)
                            ],
                          ),
                        ),
                        contactWidget(context, constraints),
                      ],
                    ),
                  ),
                ),
              )
            : Container(
                height: MediaQuery.of(context).size.height * 0.7,
                width: MediaQuery.of(context).size.width * 0.8,
                child: CustomPaint(
                foregroundPainter: ContactDialogPainter(context),
                                  child: LayoutBuilder(
                    builder: (context, constraints) =>
                        contactWidget(context, constraints),
                  ),
                ),
              ),
        Positioned(
          right: 10,
          top: 10,
          child: FloatingActionButton(
            child: Icon(
              Icons.close,
              color: Color(0xff26ABBF),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
            // tooltip: "Close",
            backgroundColor: Colors.transparent,
            mini: true,
            elevation: 0,
          ),
        )
      ]),
      // ),
      // ),
    );
  }
}
