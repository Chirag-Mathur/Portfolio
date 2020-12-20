import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import './desktop&Tablet/appBarDesktopTablet.dart';
import './mobile/appBarMobile.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/info/globals.dart';
import '../screens/AboutScreen.dart';
import '../screens/ProjectScreen.dart';

Widget appBarWidget(
    BuildContext context, ScrollController scrollController, bool isHomePage) {
  double fontsize = 25;
  Color textColor = Color(0xff173266);
  if (MediaQuery.of(context).size.width > 900)
    return appBarDesktopTablet(
        context, scrollController, isHomePage, fontsize, textColor);
  if (MediaQuery.of(context).size.width > 600)
    return appBarDesktopTablet(
        context, scrollController, isHomePage, fontsize, textColor);
  return appBarMobile(
      context, scrollController, isHomePage, fontsize, textColor);
//   return ScreenTypeLayout(
// // mobile:appBarMobile(context,scrollController,isHomePage,fontsize,textColor),
//     desktop: //appBarDesktopTablet(context,scrollController,isHomePage,fontsize,textColor),
//         AppBar(
//       automaticallyImplyLeading: false,
//       toolbarHeight: 90,
//       elevation: 0,
//       backgroundColor: Colors.transparent,
//       leading: InkWell(
//         customBorder: RoundedRectangleBorder(
//           borderRadius: BorderRadius.all(
//             Radius.circular(
//               15,
//             ),
//           ),
//         ),
//         hoverColor: Colors.black12,
//         child: Padding(
//           padding: EdgeInsets.only(left: 12.0),
//           child: Text(
//             "Monikinderjit Singh",
//             style: TextStyle(
//                 fontFamily: 'TheRichJuliet',
//                 fontSize: 53,
//                 color: textColor,
//                 fontWeight: FontWeight.w600),
//           ),
//         ),
//         onTap: () {
//           Navigator.of(context).pushNamed(AboutScreen.routeName);
//         },
//       ),
//       leadingWidth: 330,
//       actions: [
//         Padding(
//           padding: EdgeInsets.only(top: 12.0),
//           child: FlatButton(
//             hoverColor: Colors.transparent,
//             splashColor: Colors.blue[900],
//             child: Text(
//               "About Me",
//               style: GoogleFonts.domine(
//                 fontWeight: FontWeight.w600,
//                 fontSize: fontsize,
//                 color: textColor,
//               ),
//             ),
//             onPressed: () {
//               if (isHomePage) {
//                 scrollController.animateTo(
//                   -MediaQuery.of(context).size.height,
//                   duration: Duration(
//                     seconds: 5,
//                   ),
//                   curve: Curves.easeOut,
//                 );
//               } else {
//                 Navigator.of(context).push(
//                   PageRouteBuilder(
//                     pageBuilder: (context, animation, anotherAnimation) {
//                       return AboutScreen();
//                     },
//                     transitionDuration: Duration(milliseconds: 2000),
//                     transitionsBuilder:
//                         (context, animation, anotherAnimation, child) {
//                       animation = CurvedAnimation(
//                           curve: Curves.linearToEaseOut, parent: animation);
//                       return Align(
//                         child: FadeTransition(
//                           // sizeFactor: animation,
//                           child: child,
//                           opacity: animation,
//                           // axisAlignment: 1.0,
//                         ),
//                       );
//                     },
//                   ),
//                 );
//               }
//             },
//           ),
//         ),
//         SizedBox(
//           width: MediaQuery.of(context).size.width * 0.02,
//         ),
//         Padding(
//           padding: EdgeInsets.only(top: 12.0),
//           child: FlatButton(
//             hoverColor: Colors.transparent,
//             splashColor: Colors.blue[900],
//             child: Text(
//               "Skills",
//               style: GoogleFonts.domine(
//                 fontWeight: FontWeight.w600,
//                 fontSize: fontsize,
//                 color: textColor,
//               ),
//             ),
//             onPressed: () async {
//               if (isHomePage) {
//                 scrollController.animateTo(
//                   MediaQuery.of(context).size.height * 1.243,
//                   duration: Duration(
//                     seconds: 3,
//                   ),
//                   curve: Curves.easeOut,
//                 );
//               } else {
//                 Navigator.of(context).push(
//                   PageRouteBuilder(
//                       pageBuilder: (context, animation, anotherAnimation) {
//                         return AboutScreen();
//                       },
//                       transitionDuration: Duration(milliseconds: 2000),
//                       transitionsBuilder:
//                           (context, animation, anotherAnimation, child) {
//                         animation = CurvedAnimation(
//                             curve: Curves.linearToEaseOut, parent: animation);
//                         return Align(
//                           child: FadeTransition(
//                             // sizeFactor: animation,
//                             child: child,
//                             opacity: animation,
//                             // axisAlignment: 1.0,
//                           ),
//                         );
//                       }),
//                 );
//               }
//             },
//           ),
//         ),
//         SizedBox(
//           width: MediaQuery.of(context).size.width * 0.02,
//         ),
//         Padding(
//           padding: EdgeInsets.only(top: 12.0),
//           child: FlatButton(
//             hoverColor: Colors.transparent,
//             splashColor: Colors.blue[900],
//             child: Text(
//               "Projects",
//               style: GoogleFonts.domine(
//                 fontWeight: FontWeight.w600,
//                 fontSize: fontsize,
//                 color: textColor,
//               ),
//             ),
//             onPressed: () {
//               Navigator.of(context).push(
//                 PageRouteBuilder(
//                   pageBuilder: (context, animation, anotherAnimation) {
//                     return ProjectScreen();
//                   },
//                   transitionDuration: Duration(milliseconds: 1700),
//                   transitionsBuilder:
//                       (context, animation, anotherAnimation, child) {
//                     animation = CurvedAnimation(
//                         curve: Curves.easeOutSine, parent: animation);
//                     return Align(
//                       child: FadeTransition(
//                         // sizeFactor: animation,
//                         child: child,
//                         opacity: animation,
//                         // axisAlignment: 0.0,
//                       ),
//                     );
//                   },
//                 ),
//                 // ProjectScreen.routeName
//               );
//             },
//           ),
//         ),
//         SizedBox(
//           width: MediaQuery.of(context).size.width * 0.02,
//         ),
//         Padding(
//           padding: EdgeInsets.all(16.0),
//           child: RaisedButton(
//             hoverColor: Colors.transparent,
//             splashColor: Colors.blue[900],
//             color: Colors.transparent,
//             hoverElevation: 10,
//             // elevation: 7,
//             shape: RoundedRectangleBorder(
//               side: BorderSide(
//                 width: 1.6,
//                 color: Colors.blue[900],
//               ),
//             ),
//             // hoverColor: Colors.deepPurple,
//             child: Text(
//               "Resume",
//               style: GoogleFonts.faustina(
//                 fontWeight: FontWeight.w600,
//                 fontSize: 28,
//                 color: textColor,
//               ),
//             ),
//             onPressed: () {
//               Globals.openLink(
//                   "https://drive.google.com/file/d/1GTGLuEK-5l2B2nxEemUSMauEYQzOCYCs/view?usp=sharing");
//             },
//           ),
//         ),
//       ],
//     ),
//     tablet: appBarDesktopTablet(
//         context, scrollController, isHomePage, fontsize, textColor),
//   );
}
