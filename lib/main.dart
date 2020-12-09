import 'package:flutter/material.dart';
import 'package:my_portfolio/screens/ProjectScreen.dart';

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
      home: AboutScreen(),
      routes:{
        ProjectScreen.routeName:(context)=>ProjectScreen(),
      },
    );
  }
}
