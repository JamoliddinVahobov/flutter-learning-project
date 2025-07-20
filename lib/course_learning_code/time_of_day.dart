// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShoppingCart(),
    ),
  );
}

class ShoppingCart extends StatefulWidget {
  const ShoppingCart({super.key});

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  final TextEditingController _controller = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  String timeOfDay = "";
  void clock(int time) {
    setState(() {
      if (time >= 5 && time < 11) {
        timeOfDay = "Good morning";
      } else if (time >= 11 && time < 17) {
        timeOfDay = "Good afternoon";
      } else if (time >= 17 && time < 22) {
        timeOfDay = "Good evening";
      } else {
        timeOfDay = "Good night";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "O'zgaruvchan soat",
          style: TextStyle(color: Colors.white, fontSize: 17),
        ),
        toolbarHeight: 40,
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.blue, width: 5),
                ),
                suffixIcon: IconButton(
                  onPressed: () {
                    int time = int.tryParse(_controller.text) ?? 0;
                    clock(time);
                  },
                  icon: Icon(Icons.check),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            timeOfDay,
            style: TextStyle(fontSize: 30),
          ),
        ],
      ),
    );
  }
}
