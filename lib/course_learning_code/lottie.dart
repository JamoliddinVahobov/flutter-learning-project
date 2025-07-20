// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, unnecessary_import, avoid_print
// ignore: prefer_const_literals_to_create_immutables
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Lottieyeah(),
    ),
  );
}

class Lottieyeah extends StatefulWidget {
  const Lottieyeah({super.key});

  @override
  State<Lottieyeah> createState() => _LottieyeahState();
}

class _LottieyeahState extends State<Lottieyeah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Lottie.asset(height: 300, width: 300, 'images/lol.json'),
      ),
    );
  }
}
