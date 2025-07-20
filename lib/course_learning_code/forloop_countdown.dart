import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CountDown(),
  ));
}

class CountDown extends StatefulWidget {
  const CountDown({super.key});

  @override
  State<CountDown> createState() => _CountDownState();
}

class _CountDownState extends State<CountDown> {
  List<dynamic> numbers = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1, "Boom"];
  int index = 0;
  @override
  void initState() {
    num();
    super.initState();
  }

  void num() async {
    for (int j = 0; j < numbers.length; j++) {
      await Future.delayed(const Duration(seconds: 1));
      setState(() {
        index = j;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          numbers[index].toString(),
          style: const TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
