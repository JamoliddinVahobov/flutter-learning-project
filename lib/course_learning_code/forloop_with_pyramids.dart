import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: PatternPrinter(),
  ));
}

class PatternPrinter extends StatefulWidget {
  const PatternPrinter({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PatternPrinterState createState() => _PatternPrinterState();
}

class _PatternPrinterState extends State<PatternPrinter> {
  List<String> pattern = [];

  void generatePattern(int type) {
    int rows = 4; // Number of rows for the pattern

    switch (type) {
      case 1: // Pyramid Pattern
        for (int i = 1; i <= rows; i++) {
          String stars =
              ' ' * (rows - i) + '*' * (2 * i - 1) + ' ' * (rows - i);
          pattern.add(stars);
        }
        break;
      case 2: // Inverted Pyramid Pattern
        for (int i = rows; i >= 1; i--) {
          String stars =
              ' ' * (rows - i) + '*' * (2 * i - 1) + ' ' * (rows - i);
          pattern.add(stars);
        }
        break;
      default:
        pattern.add("Invalid pattern type!");
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pattern Printer'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                generatePattern(1); // Generate Pyramid Pattern
              },
              child: const Text('Generate Pyramid'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                generatePattern(2); // Generate Inverted Pyramid Pattern
              },
              child: const Text('Generate Inverted Pyramid'),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: pattern.length,
                itemBuilder: (context, index) {
                  return Center(
                    child: Text(
                      pattern[index],
                      style:
                          const TextStyle(fontFamily: 'Courier', fontSize: 30),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
