import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kingofcomfort/riverpod/simple_riverpod/counter_built_with_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: CounterAppWithRiverpod(),
    ),
  );
}
