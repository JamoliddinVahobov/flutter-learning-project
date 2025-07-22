import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kingofcomfort/riverpod/simple_riverpod/counter_riverpod_state.dart';

void main() {
  runApp(
    const ProviderScope(
      child: CounterAppWithRiverpod(),
    ),
  );
}

class CounterAppWithRiverpod extends StatelessWidget {
  const CounterAppWithRiverpod({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CounterAppBuiltWithRiverpod(),
    );
  }
}

class CounterAppBuiltWithRiverpod extends ConsumerWidget {
  const CounterAppBuiltWithRiverpod({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter with Riverpod'),
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
          child: Text(
        ref.watch(counterRiverpodState).toString(),
        style: const TextStyle(fontSize: 30),
      )),
      floatingActionButton: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 12, 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.greenAccent,
              shape: const CircleBorder(),
              onPressed: () => ref.read(counterRiverpodState.notifier).state++,
              heroTag: 'fab1',
              child: const Icon(Icons.add),
            ),
            const SizedBox(height: 16),
            FloatingActionButton(
              backgroundColor: Colors.greenAccent,
              shape: const CircleBorder(),
              onPressed: () => ref.read(counterRiverpodState.notifier).state--,
              heroTag: 'fab2',
              child: const Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}
