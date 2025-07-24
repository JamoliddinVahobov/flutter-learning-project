import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kingofcomfort/riverpod/theme_switcher_with_model/riverpod_theme_model.dart';

final themeRiverpodWithModel = StateProvider<RiverThemeModel>(
  (ref) {
    return RiverThemeModel(mode: ThemeMode.light);
  },
);

void switchToLightWithModel(WidgetRef ref) {
  ref.read(themeRiverpodWithModel.notifier).state =
      RiverThemeModel(mode: ThemeMode.light);
}

void switchToDarkWithModel(WidgetRef ref) {
  ref.read(themeRiverpodWithModel.notifier).state =
      RiverThemeModel(mode: ThemeMode.dark);
}

void switchToSystemWithModel(WidgetRef ref) {
  ref.read(themeRiverpodWithModel.notifier).state =
      RiverThemeModel(mode: ThemeMode.system);
}
