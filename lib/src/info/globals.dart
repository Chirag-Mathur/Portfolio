import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:universal_html/html.dart' as html;
import 'package:flutter/foundation.dart' show kIsWeb;

class Globals {
  static final Color backgroundColorLight =
      Color.fromRGBO(189, 224, 255, 1); //Color(0xffbddbff);
  static final Color splashColorLight = Colors.blue[900];

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
    if (url == '') {
      return;
    }
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
