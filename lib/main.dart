import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kingofcomfort/riverpod/theme_switcher_with_model/theme_switcher_with_riverpod_with_model.dart';

void main() {
  runApp(
    const ProviderScope(
      child: ThemeSwitcherWithRiverpodWithModel(),
    ),
  );
}
