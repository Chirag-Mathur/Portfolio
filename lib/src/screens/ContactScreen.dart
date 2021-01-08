import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/src/widgets/socialMediaRow.dart';

//not added to website
//under Development
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
  FocusNode nodeName = FocusNode();
  FocusNode nodeMessage = FocusNode();
  FocusNode nodeEmail = FocusNode();
  FocusNode nodeButton = FocusNode();
  // String name, email, message;

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: appBarWidget(context),
      // backgroundColor: Globals.backgroundColorLight,
      body: Container(
        height: MediaQuery.of(context).size.height * 0.7,
        width: MediaQuery.of(context).size.width * 0.6,
        child: LayoutBuilder(
          builder: (context, constraints) => Row(
            children: [
              Container(
                width: constraints.maxWidth * 0.5,
                height: constraints.maxHeight,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: Text('pic'),
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
              Container(
                width: constraints.maxWidth * 0.5,
                height: constraints.maxHeight,
                color: Colors.grey[300],
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(12),
                      child: Text(
                        "Lets connect!!",
                        style: TextStyle(fontSize: 30),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(
                      height: constraints.minHeight * 0.056,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      // widthFactor: 7,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Text(
                          "Name",
                          style: TextStyle(fontSize: 23),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: constraints.minHeight * 0.015,
                    ),
                    SizedBox(
                      width: constraints.maxWidth * 0.36,
                      child: TextField(
                        focusNode: nodeName,
                        decoration: InputDecoration(
                          labelText: 'Name',
                          border: OutlineInputBorder(),
                          fillColor: Colors.pink,
                        ),
                        controller: _nameController,
                        textCapitalization: TextCapitalization.words,
                        keyboardType: TextInputType.name,
                        onSubmitted: (name) {
                          FocusScope.of(context).requestFocus(nodeEmail);
                        },
                      ),
                    ),
                    SizedBox(
                      height: constraints.minHeight * 0.035,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      // widthFactor: 7,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Text(
                          "Email",
                          style: TextStyle(fontSize: 23),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: constraints.minHeight * 0.015,
                    ),
                    SizedBox(
                      width: constraints.maxWidth * 0.36,
                      child: TextField(
                        focusNode: nodeEmail,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder(),
                          fillColor: Colors.pink,
                        ),
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        onSubmitted: (name) {
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
                        child: Text(
                          "Message",
                          style: TextStyle(fontSize: 23),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: constraints.minHeight * 0.015,
                    ),
                    SizedBox(
                      width: constraints.maxWidth * 0.36,
                      child: TextField(
                        focusNode: nodeMessage,
                        maxLines: 3,
                        keyboardType: TextInputType.text,
                        textCapitalization: TextCapitalization.sentences,
                        decoration: InputDecoration(
                          labelText: 'Message',
                          border: OutlineInputBorder(),
                          fillColor: Colors.pink,
                        ),
                        controller: _messageController,
                        onSubmitted: (name) {
                          // FocusScope.of(context).requestFocus(nodeEmail);
                        },
                      ),
                    ),
                    SizedBox(
                      height: constraints.maxHeight * 0.1,
                    ),
                    ElevatedButton(
                      child: Text("Connect"),
                      onPressed: () {
                        submitData(_nameController.text, _emailController.text,
                            _messageController.text);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        // Column(
        //   children: [
        //     Container(
        //       alignment: Alignment.center,
        //       color: Colors
        //           .black, // Color(0xffe0ffbd), //Color.fromRGBO(224,255,189,1), //
        //       margin: EdgeInsets.symmetric(
        //         horizontal: MediaQuery.of(context).size.width * 0.16,
        //         vertical: MediaQuery.of(context).size.height * 0.1,
        //       ),
        //       height: MediaQuery.of(context).size.height * 0.58,
        //       width: MediaQuery.of(context).size.width * 0.7,
        //       child: Column(
        //         // mainAxisAlignment: MainAxisAlignment.center,
        //         crossAxisAlignment: CrossAxisAlignment.center,

        //         mainAxisSize: MainAxisSize.max,
        //         mainAxisAlignment: MainAxisAlignment.start,
        //         children: [
        //           Text(
        //             'Contact with me if you wanna like to work together :)',
        //             style: GoogleFonts.oswald(
        //               fontSize: 40,
        //               color: Colors.blue[900],
        //             ),
        //           ),
        //           SizedBox(
        //             height: MediaQuery.of(context).size.height * 0.1,
        //           ),
        //           // Container(
        //           //   color: Colors
        //           //       .pink, //Color.fromRGBO(224, 255, 189, 1), // Color(0xff71bcff),
        //           //   margin: EdgeInsets.all(
        //           //     MediaQuery.of(context).size.width * 0.006,
        //           //   ),
        //           //   width: MediaQuery.of(context).size.width * 0.5,
        //           // child:
        //           //  Column(
        //           //   mainAxisAlignment: MainAxisAlignment.center,
        //           //   crossAxisAlignment: CrossAxisAlignment.center,
        //           //   children: [
        //           // Container(
        //           //   width: MediaQuery.of(context).size.width * 0.23,
        //           //   height: MediaQuery.of(context).size.height * 0.06,
        //           //   child: Column(children: [
        //           Text(
        //             'Name',
        //             style: TextStyle(fontSize: 20, color: Colors.white),
        //           ),
        //           Container(
        //             width: MediaQuery.of(context).size.width * 0.15,
        //             height: MediaQuery.of(context).size.height * 0.04,
        //             child: TextField(
        //               focusNode: nodeName,
        //               decoration: InputDecoration(
        //                 labelText: 'Name',
        //                 border: OutlineInputBorder(),
        //                 fillColor: Colors.pink,
        //               ),
        //               controller: _nameController,
        //               textCapitalization: TextCapitalization.words,
        //               keyboardType: TextInputType.name,
        //               onSubmitted: (name) {
        //                 FocusScope.of(context).requestFocus(nodeEmail);
        //               },
        //             ),
        //           ), //Text('Enter here'),
        //           // ]),
        //           // ),
        //           // Container(
        //           //   width: MediaQuery.of(context).size.width * 0.23,
        //           //   height: MediaQuery.of(context).size.height * 0.06,
        //           //   child: ListTile(
        //           // title:
        //           Text('Email',style: TextStyle(fontSize: 20, color: Colors.white),),
        //           // trailing:
        //           //  Container(
        //           //   width: MediaQuery.of(context).size.width * 0.15,
        //           //   height: MediaQuery.of(context).size.height * 0.04,
        //           // child:
        //           TextField(
        //             focusNode: nodeEmail,
        //             decoration: InputDecoration(
        //               border: OutlineInputBorder(),
        //               labelText: 'Email',
        //               fillColor: Colors.pink,
        //             ),
        //             controller: _emailController,
        //             keyboardType: TextInputType.emailAddress,
        //             onSubmitted: (email) {
        //               FocusScope.of(context).requestFocus(nodeMessage);
        //             },
        //           ),
        //           // ),
        //           // ),
        //           // ),
        //           // Container(
        //           //   width: MediaQuery.of(context).size.width * 0.23,
        //           //   height: MediaQuery.of(context).size.height * 0.12,
        //           // child: ListTile(
        //           //   title:
        //           Text('Message',style: TextStyle(fontSize: 20, color: Colors.white),),
        //           // trailing:
        //           // Container(
        //           //   width: MediaQuery.of(context).size.width * 0.15,
        //           //   height: MediaQuery.of(context).size.height * 0.07,
        //           // child:
        //           TextField(
        //             focusNode: nodeMessage,
        //             expands: true,
        //             decoration: InputDecoration(
        //               border: OutlineInputBorder(),
        //               labelText: 'Message',
        //               fillColor: Colors.pink,
        //             ),
        //             controller: _messageController,
        //             // maxLines: 3,
        //             keyboardType: TextInputType.text,
        //             textCapitalization: TextCapitalization.sentences,
        //             onSubmitted: (message) {
        //               FocusScope.of(context).requestFocus(nodeButton);
        //             },
        //             onEditingComplete: () {
        //               print("Name: ${_nameController.text}");
        //               print("Message: ${_messageController.text}");
        //               print("Email: ${_emailController.text}");
        //             },
        //           ),
        //           //     ),
        //           //   ),
        //           // ),
        //           // Center(
        //           //   child: Container(
        //           //     height: MediaQuery.of(context).size.height * 0.04,
        //           //     width: MediaQuery.of(context).size.width * 0.1,
        //           // child:
        //           RaisedButton(
        //             focusNode: nodeButton,
        //             child: Text("Submit And Connect"),
        //             // focusColor: ,
        //             onPressed: () {
        //               print("Name: ${_nameController.text}");
        //               print("Message: ${_messageController.text}");

        //               print("Email: ${_emailController.text}");
        //             },
        //           ),
        //           //   ],
        //           // ),
        //           // ),
        //           // ),
        //           // ),
        //           // ),
        //           footer(context),
        //         ],
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
