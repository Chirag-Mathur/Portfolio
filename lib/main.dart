import 'package:flutter/material.dart';

import './screens/SplashScreen.dart';
import './screens/AboutScreen.dart';
import './screens/ProjectScreen.dart';
import './screens/ContactScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Monikinderjit Singh Portfolio',
      home: SplashScreen(),
      routes: {
        AboutScreen.routeName: (context) => AboutScreen(),
        ProjectScreen.routeName: (context) => ProjectScreen(),
        ContactScreen.routeName: (context) => ContactScreen(),
      },
    );
  }
}
