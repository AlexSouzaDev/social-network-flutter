import 'package:flutter/material.dart';
import 'package:socialnetworkflutter/themes/dark_mode.dart';
import 'package:socialnetworkflutter/themes/light_mode.dart';

/* 
  The ThemeProvider class is a provider that manages the theme of the app. 
  It has a method called toggleTheme that changes the theme of the app 
  between light and dark mode. 
*/

class ThemeProvider with ChangeNotifier {
  // Start with dark mode as the default theme
  ThemeData _themeData = darkMode;

  // the current theme of the app
  ThemeData get themeData => _themeData;

  //is it light mode?
  bool get isLightMode => _themeData == darkMode;

  //set the theme
  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  //toggle the theme
  void toggleTheme() {
    _themeData = isLightMode ? darkMode : lightMode;
    notifyListeners();
  }
}
