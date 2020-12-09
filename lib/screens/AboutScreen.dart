import 'package:flutter/material.dart';
import '../widgets/AppBarWidget.dart';

class AboutScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(189,224,255,1),
      appBar: appBarWidget(),
    );
  }
}
