import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final simpleThemeRiverpod = StateProvider<ThemeMode>((ref) => ThemeMode.system);

void switchToDarkSimple(WidgetRef ref) {
  ref.read(simpleThemeRiverpod.notifier).state = ThemeMode.dark;
}

void switchToLightSimple(WidgetRef ref) {
  ref.read(simpleThemeRiverpod.notifier).state = ThemeMode.light;
}

void switchToSystemSimple(WidgetRef ref) {
  ref.read(simpleThemeRiverpod.notifier).state = ThemeMode.system;
}
