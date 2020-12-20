import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:universal_html/html.dart' as html;
import 'package:flutter/foundation.dart' show kIsWeb;

class Globals {


  static final Color backgroundColor = Color.fromRGBO(189, 224, 255, 1);



  static final List<Map<String, dynamic>> projectsList = [
    {
      'title': "My Portfolio Website",
      'startedIn': 'December 2020',
      'description':
          'My portfolio website created by myself which showcases my skills and profiles.',
      'projectLink': 'https://github.com/Monik09/Portfolio',
      'techUsed': ['assets/images/flutter.png']
    },
    {
      'title': "Chat App",
      'startedIn': 'October 2020',
      'description': 'An app from which we can send messages to other users',
      'projectLink': 'https://github.com/Monik09/Chat-App',
      'techUsed': ['assets/images/flutter.png', 'assets/images/firebase.png']
    },
    {
      'title': "CineScript",
      'startedIn': 'September-December 2020',
      'description':
          'Java based programming language built in team project based on BOLLYWOOD theme',
      'projectLink': 'https://github.com/Ozric-Ode/Cinescript',
      'techUsed': ['assets/images/java4.png']
    },
    {
      'title': "My Meals App",
      'startedIn': 'May-June 2020',
      'description':
          'An app for different recipes\' steps and food categories.',
      'projectLink': 'https://github.com/Monik09/My-Meals-App',
      'techUsed': ['assets/images/flutter.png']
    },
    {
      'title': "Shop App",
      'startedIn': 'May 2020',
      'description':
          'An app to buy goods online. This app uses data from internet and some animations for better user experience.',
      'projectLink': 'https://github.com/Monik09/shop-app',
      'techUsed': ['assets/images/flutter.png', 'assets/images/firebase.png']
    },
  ];

  static final List<String> langAndFramewks = [
    'Dart',
    'Java',
    'C/C++',
    'Python',
    'Flutter'
  ];

  static final List<String> tools = [
    'Git & Github',
    'Firebase',
    'VSCode',
    'GCP',
  ];

  
  static void openLink(String url) async {
    // String url = 'https://flutter.dev';
    if (kIsWeb) {
      html.window.open(url, '_blank');
    } else {
      if (await canLaunch(url)) {
        launch(url);
      }
    }
  }

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 800;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= 800 &&
            MediaQuery.of(context).size.width <= 1200;
  }
}
