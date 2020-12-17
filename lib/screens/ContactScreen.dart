import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/widgets/footer.dart';

import '../widgets/appBarWidget.dart';

class ContactScreen extends StatefulWidget {
  static const String routeName = "/ContactScreen";

  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _messageController = TextEditingController();
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
              color: Color(0xffe0ffbd), //Color.fromRGBO(224,255,189,1), //
              margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.16,
                vertical: MediaQuery.of(context).size.height * 0.1,
              ),
              height: MediaQuery.of(context).size.height * 0.58,
              width: MediaQuery.of(context).size.width * 0.7,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,

                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
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
                    color:
                        Color.fromRGBO(224, 255, 189, 1), // Color(0xff71bcff),
                    margin: EdgeInsets.all(
                      MediaQuery.of(context).size.width * 0.006,
                    ),
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.23,
                          height: MediaQuery.of(context).size.height * 0.06,
                          child: ListTile(
                            title: Text('Name'),
                            trailing: Container(
                              width: MediaQuery.of(context).size.width * 0.15,
                              height: MediaQuery.of(context).size.height * 0.04,
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: 'Name',
                                  border: OutlineInputBorder(),
                                ),
                                controller: _nameController,
                                textCapitalization: TextCapitalization.words,
                                keyboardType: TextInputType.name,
                                onChanged: (name) {
                                  print(name);
                                },
                                onSubmitted: (name) {},
                              ),
                            ), //Text('Enter here'),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.23,
                          height: MediaQuery.of(context).size.height * 0.06,
                          child: ListTile(
                            title: Text('Email'),
                            trailing: Container(
                              width: MediaQuery.of(context).size.width * 0.15,
                              height: MediaQuery.of(context).size.height * 0.04,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Email'),
                                controller: _emailController,
                                keyboardType: TextInputType.emailAddress,
                                onChanged: (email) {
                                  print(email);
                                },
                                onSubmitted: (name) {},
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.23,
                          height: MediaQuery.of(context).size.height * 0.12,
                          child: ListTile(
                            title: Text('Message'),
                            trailing: Container(
                              width: MediaQuery.of(context).size.width * 0.15,
                              height: MediaQuery.of(context).size.height * 0.07,
                              child: TextField(
                                expands: true,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Message'),
                                controller: _messageController,
                                // maxLines: 3,
                                keyboardType: TextInputType.text,
                                textCapitalization:
                                    TextCapitalization.sentences,
                                onChanged: (message) {
                                  print(message);
                                },
                                onSubmitted: (name) {},
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
                ],
              ),
            ),
            footer(context),
          ],
        ),
      ),
    );
  }
}
