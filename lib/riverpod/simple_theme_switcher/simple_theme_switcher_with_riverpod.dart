import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kingofcomfort/riverpod/simple_theme_switcher/simple_theme_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: SimpleThemeSwitcherWithRiverpod(),
    ),
  );
}

class SimpleThemeSwitcherWithRiverpod extends ConsumerWidget {
  const SimpleThemeSwitcherWithRiverpod({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ref.watch(simpleThemeRiverpod),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Simple theme switcher with Riverpod'),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            children: [
              ElevatedButton.icon(
                onPressed: () => switchToLightSimple(ref),
                label: const Text('Light'),
                icon: const Icon(Icons.sunny),
              ),
              ElevatedButton.icon(
                onPressed: () => switchToDarkSimple(ref),
                label: const Text('Dark'),
                icon: const Icon(Icons.dark_mode),
              ),
              ElevatedButton.icon(
                onPressed: () => switchToSystemSimple(ref),
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
