import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Colored Containers',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ColoredContainers(),
    );
  }
}

class ColoredContainers extends StatefulWidget {
  const ColoredContainers({super.key});

  @override
  State<ColoredContainers> createState() => _ColoredContainersState();
}

class _ColoredContainersState extends State<ColoredContainers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Color-changing Containers'),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: 1000000000000000000,
        itemBuilder: (context, index) {
          return Container(
            height: 100,
            color: index % 2 == 0
                ? Colors.red
                : index == 3
                    ? Colors.black
                    : Colors.yellow[700],
            margin: const EdgeInsets.all(5),
            child: Center(
              child: Text(
                index % 2 == 0
                    ? "Red"
                    : index == 3
                        ? "Black"
                        : "Yellow",
                style:
                    TextStyle(color: index == 3 ? Colors.white : Colors.white),
              ),
            ),
          );
        },
      ),
    );
  }
}
