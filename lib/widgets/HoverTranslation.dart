import 'package:flutter/material.dart';

class HoverTranslation extends StatefulWidget {
  final Widget child;
  HoverTranslation({Key key, this.child}) : super(key: key);
  @override
  _HoverTranslationState createState() => _HoverTranslationState();
}

class _HoverTranslationState extends State<HoverTranslation> {
  final nonHoverTranslation = Matrix4.identity();
  final hoverTranslation = Matrix4.identity()
    ..translate(0, -10, 0); //translating in -10 of y-axis

  bool _isHover = false;

  void mouseEnter(bool value) {
    setState(() {
      _isHover = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => mouseEnter(true),
      onExit: (event) => mouseEnter(false),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        child: widget.child,
        transform: _isHover ? hoverTranslation : nonHoverTranslation,
      ),
    );
  }
}
