import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kingofcomfort/riverpod/theme_switcher_with_model/riverpod_theme_model.dart';

final themeRiverpodWithModel = ChangeNotifierProvider<RiverThemeModel>(
  (ref) {
    return RiverThemeModel(mode: ThemeMode.light);
  },
);
