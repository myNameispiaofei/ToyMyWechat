

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum ThemeType {
  light,
  dark,
}

class ThemeModel with ChangeNotifier {
  ThemeData themeData;
  ThemeType currentType;
  String text = 'AAAAAAAAAAA';

  ThemeModel(ThemeType type) {
    currentType = type;
    if (type == ThemeType.dark) {
      themeData = ThemeData.dark();
    } else {
      themeData = ThemeData.light();
    }
  }

  void updateText(String t) {
    if(text == '12345') {
      text = 'ACE';
    } else {
      text = '12345';
    }
    notifyListeners();
  }

  void reverse() {
    if (currentType == ThemeType.light) {
      _update(ThemeType.dark);
    } else {
      _update(ThemeType.light);
    }
  }

  void _update(ThemeType type) {
    currentType = type;
    if (type == ThemeType.dark) {
      themeData = ThemeData.dark();
    } else {
      themeData = ThemeData.light();
    }
    notifyListeners();
  }
}