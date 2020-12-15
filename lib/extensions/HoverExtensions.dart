import 'package:flutter/material.dart';
import 'dart:html' as html;

import '../widgets/HoverTranslation.dart';

extension HoverExtensions on Widget {
  static final appContainer =
      html.window.document.getElementById('my-Portfolio');
  Widget get showCursorOnHover {
    return MouseRegion(
        child: this,
        onHover: (event) => appContainer.style.cursor = 'pointer',
        onExit: (event) => appContainer.style.cursor = 'default');
  }

  Widget get upOnHover {
    return HoverTranslation(
      child: this,
    );
  }
}
