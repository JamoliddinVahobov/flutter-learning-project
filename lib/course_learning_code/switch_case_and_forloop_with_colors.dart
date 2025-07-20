import 'package:flutter/material.dart';

void main() {
  runApp(const ColorSelectorApp());
}

class ColorSelectorApp extends StatelessWidget {
  const ColorSelectorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ColorSelectorScreen(),
    );
  }
}

class ColorSelectorScreen extends StatefulWidget {
  const ColorSelectorScreen({super.key});

  @override
  ColorSelectorScreenState createState() => ColorSelectorScreenState();
}

class ColorSelectorScreenState extends State<ColorSelectorScreen> {
  Color backgroundColor = Colors.white;
  void changeColor(int index) {
    switch (index) {
      case 0:
        setState(() {
          backgroundColor = Colors.green;
        });
        break;
      case 1:
        setState(() {
          backgroundColor = Colors.red;
        });
        break;
      case 2:
        setState(() {
          backgroundColor = Colors.purple;
        });
        break;
      case 3:
        setState(() {
          backgroundColor = Colors.yellow;
        });
        break;
      case 4:
        setState(() {
          backgroundColor = Colors.blue;
        });

        break;
      case 5:
        setState(() {
          backgroundColor = Colors.black;
        });
      default:
        backgroundColor = Colors.white;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: backgroundColor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int a = 0; a <= 5; a++)
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      changeColor(a);
                    },
                    child: Text('Change to Color $a'),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
