// import 'package:flutter/material.dart';

// class ThemeManager with ChangeNotifier {
//  ThemeData _themeData;
 
//  /// Use this method on UI to get selected theme.
//  ThemeData get themeData {
//    if (_themeData == null) {
//      _themeData = appThemeData[AppTheme.White];
//    }
//    return _themeData;
//  }

//  /// Sets theme and notifies listeners about change. 
//  setTheme(AppTheme theme) async {
//    _themeData = appThemeData[theme];

//    // Here we notify listeners that theme changed 
//    // so UI have to be rebuild
//    notifyListeners();
//  }
// }