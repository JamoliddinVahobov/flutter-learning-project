import 'package:flutter/material.dart';

class RiverThemeModel extends ChangeNotifier {
  ThemeMode mode;

  RiverThemeModel({
    required this.mode,
  });

  void changeTheme(ThemeMode newMode) {
    mode = newMode;
    notifyListeners();
  }
}
