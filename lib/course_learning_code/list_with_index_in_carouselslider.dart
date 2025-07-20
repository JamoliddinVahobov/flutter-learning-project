// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, unnecessary_import
// ignore: prefer_const_literals_to_create_immutables
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Rockie(),
    ),
  );
}

class Rockie extends StatefulWidget {
  const Rockie({super.key});

  @override
  State<Rockie> createState() => _RockieState();
}

class _RockieState extends State<Rockie> {
  List scaredPottah = [
    "images/1.jpg",
    "images/2.jpg",
    "images/3.webp",
    "images/4.jpg",
    "images/5.webp",
    "images/6.jpg",
    "images/7.webp",
    "images/image13.jpg",
    "images/image14.jpg",
    "images/image15.jpg",
    "images/image21.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 244, 242, 242),
        body: Center(
          // ignore: sized_box_for_whitespace
          child: Container(
            height: double.maxFinite,
            width: double.maxFinite,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [
                  Colors.yellow,
                  Colors.red,
                  Colors.white,
                  Colors.blue,
                  Colors.lightGreen,
                  Colors.orange,
                ])),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: CarouselSlider(
                items: scaredPottah.map((item) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ImageScreen(thing: item)));
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(item, fit: BoxFit.cover),
                    ),
                  );
                }).toList(),
                options: CarouselOptions(
                  initialPage: 3,
                  aspectRatio: 5 / 3,
                  viewportFraction: 0.8,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  enlargeCenterPage: true,
                  autoPlayCurve: Curves.easeInBack,
                  enlargeFactor: 0.3,
                ),
              ),
            ),
          ),
        ));
  }
}

class ImageScreen extends StatelessWidget {
  final String thing;
  const ImageScreen({super.key, required this.thing});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Viewer'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(thing, fit: BoxFit.cover)),
        ),
      ),
    );
  }
}
