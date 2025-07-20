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
            child: CarouselSlider(
              items: scaredPottah
                  .map((heheboy) => Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            heheboy,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ))
                  .toList(),
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
        ));
  }
}
