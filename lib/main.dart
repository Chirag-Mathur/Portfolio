import 'package:flutter/material.dart';

import './screens/ContactScreen.dart';
import './screens/ProjectScreen.dart';
import './screens/AboutScreen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes:{
        '/':(context)=>AboutScreen(),
        ProjectScreen.routeName:(context)=>ProjectScreen(),
        ContactScreen.routeName:(context)=>ContactScreen()
      },
    );
  }
}
