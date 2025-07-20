// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, unnecessary_import
// ignore: prefer_const_literals_to_create_immutables
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Rockie(),
    ),
  );
}

final creepy = TextStyle(
  color: Colors.white,
  fontSize: 18,
);

class Rockie extends StatefulWidget {
  const Rockie({super.key});

  @override
  State<Rockie> createState() => _RockieState();
}

class _RockieState extends State<Rockie> {
  List scaredPottah = [
    Or(
      pic: "images/image19.jpg",
      buddy: "Paris",
    ),
    Or(
      pic: "images/chicago.jpg",
      buddy: "Chicago",
    ),
    Or(
      pic: "images/rome.jpg",
      buddy: "Italy",
    ),
    Or(
      pic: "images/tokyo.jpg",
      buddy: "Tokyo",
    ),
    Or(
      pic: "images/london.webp",
      buddy: "London",
    ),
    Or(
      pic: "images/roma.jpg",
      buddy: "Rome",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[600],
        title: Text(
          'Har hil malumotli Listlar',
          style: creepy,
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.red,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
          ),
          children: scaredPottah.map((milk) => grow(milk)).toList(),
        ),
      ),
    );
  }
}

class Or {
  String? buddy;
  String? icon;
  String? pic;
  Or({
    this.buddy,
    this.pic,
    this.icon,
  });
}

Widget grow(milk) {
  return Container(
    height: 180,
    width: 180,
    color: Colors.teal[600],
    child: Column(
      children: [
        Expanded(
          flex: 9,
          child: Container(
            color: Colors.transparent,
            child: Expanded(
              child: Image.asset(
                milk.pic,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.location_on,
                color: Colors.white,
                size: 20,
              ),
              Text(
                milk.buddy,
                style: creepy,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
