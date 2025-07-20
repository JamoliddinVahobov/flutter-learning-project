import 'package:flutter/material.dart';
import 'package:kingofcomfort/provider/counter_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const CounterAppWithProvider());
}

class CounterAppWithProvider extends StatelessWidget {
  const CounterAppWithProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      child: const MaterialApp(
        home: CounterBuiltWithProvider(),
      ),
    );
  }
}

class CounterBuiltWithProvider extends StatefulWidget {
  const CounterBuiltWithProvider({super.key});

  @override
  State<CounterBuiltWithProvider> createState() =>
      _CounterBuiltWithProviderState();
}

class _CounterBuiltWithProviderState extends State<CounterBuiltWithProvider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter with Provider'),
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: Consumer<CounterProvider>(
          builder: (context, provider, child) {
            return Text(
              provider.count.toString(),
              style: const TextStyle(fontSize: 30),
            );
          },
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 12, 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.greenAccent,
              shape: const CircleBorder(),
              onPressed: () => context.read<CounterProvider>().increment(),
              heroTag: 'fab1', // Must be unique if you use multiple FABs
              child: const Icon(Icons.add),
            ),
            const SizedBox(height: 16), // space between buttons
            FloatingActionButton(
              backgroundColor: Colors.greenAccent,
              shape: const CircleBorder(),
              onPressed: () => context.read<CounterProvider>().decrement(),
              heroTag: 'fab2',
              child: const Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}
