import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kingofcomfort/riverpod/theme_switcher_with_model/theme_riverpod_with_model.dart';

void main() {
  runApp(ProviderScope(child: materialApp()));
}

Widget materialApp() {
  return Consumer(
    builder: (context, ref, child) {
      return MaterialApp(
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        themeMode: ref.watch(themeRiverpodWithModel).mode,
        home: themeSwitcherApp(ref),
      );
    },
  );
}

Widget themeSwitcherApp(WidgetRef ref) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('Theme switcher'),
    ),
    body: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 10,
        children: [
          ElevatedButton.icon(
            onPressed: () => switchToLightWithModel(ref),
            label: const Text('Light'),
            icon: const Icon(Icons.sunny),
          ),
          ElevatedButton.icon(
            onPressed: () => switchToDarkWithModel(ref),
            label: const Text('Dark'),
            icon: const Icon(Icons.dark_mode),
          ),
          ElevatedButton.icon(
            onPressed: () => switchToSystemWithModel(ref),
            label: const Text('System'),
            icon: const Icon(Icons.system_security_update),
          ),
        ],
      ),
    ),
  );
}
