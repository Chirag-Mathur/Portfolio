import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:universal_html/html.dart' as html;
import 'package:flutter/foundation.dart' show kIsWeb;

class Globals {
  static final Color backgroundColorLight =
      Color.fromRGBO(189, 224, 255, 1); //Color(0xffbddbff);
  static final Color splashColorLight = Colors.blue[900];

  static final List<Map<String, dynamic>> projectsList = [
    {
      'title': "MyPortfolio Website",
      'startedIn': 'December 2020',
      'description':
          'My portfolio website created by myself which showcases my skills and profiles.',
      'projectLink': 'https://github.com/Monik09/Portfolio',
      'techUsed': ['assets/images/flutter.png']
    },
    {
      'title': "Chat App",
      'startedIn': 'October 2020',
      'description':
          'An app from which we can send messages to other users by use of firebase messaging and firestore to store images.',
      'projectLink': 'https://github.com/Monik09/Chat-App',
      'techUsed': ['assets/images/flutter.png', 'assets/images/firebase.png']
    },
    {
      'title': "CineScript",
      'startedIn': 'September 2020',
      'description':
          'Java based programming language built in team project based on BOLLYWOOD theme',
      'projectLink': 'https://github.com/Ozric-Ode/Cinescript',
      'techUsed': ['assets/images/java4.png']
    },
    {
      'title': "My Meals App",
      'startedIn': 'May 2020',
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
    {
      'title': "CCblog unofficial",
      'startedIn': 'July 2020',
      'description':
          'A blog Website developed using flutter web for CC to showcase past and upcoming events, members and featured blogs.',
      'projectLink': 'https://github.com/Skyhook-Dimension/CCBlogWebsite-unofficial-',
      'techUsed': ['assets/images/flutter.png']
    },
    {
      'title': "MyPortfolio Website",
      'startedIn': 'December 2020',
      'description':
          'My portfolio website created by myself which showcases my skills and profiles.',
      'projectLink': 'https://github.com/Monik09/Portfolio',
      'techUsed': ['assets/images/flutter.png']
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

  static final List<Map<String, String>> langAndFramewks2 = [
    {'name': 'Dart', 'image': 'assets/images/dart.png'},
    {'name': 'Java', 'image': 'assets/images/java.png'},
    {'name': 'C/C++', 'image': 'assets/images/cpp.png'},
    {'name': 'Python', 'image': 'assets/images/python.png'},
    {'name': 'Flutter', 'image': 'assets/images/flutter.png'},
  ];

  static final List<Map<String, String>> tools2 = [
    {'name': 'Git', 'image': 'assets/images/gitlogo.png'},
    {'name': 'Firebase', 'image': 'assets/images/firebase.png'},
    {'name': 'VSCode', 'image': 'assets/images/vscode.png'},
    {'name': 'GCP', 'image': 'assets/images/googlecloud.png'},
  ];

  static void openLink(String url) async {
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
    return MediaQuery.of(context).size.width >= 800;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= 800 &&
        MediaQuery.of(context).size.width <= 1200;
  }
}
