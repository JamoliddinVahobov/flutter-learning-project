import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kingofcomfort/riverpod/theme_switcher_with_model/theme_riverpod_with_model.dart';

void main() {
  runApp(
    const ProviderScope(
      child: ThemeSwitcherWithRiverpodWithModel(),
    ),
  );
}

class ThemeSwitcherWithRiverpodWithModel extends ConsumerWidget {
  const ThemeSwitcherWithRiverpodWithModel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ref.watch(themeRiverpodWithModel).mode,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Theme switcher with Riverpod with Model'),
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
      ),
    );
  }
}
