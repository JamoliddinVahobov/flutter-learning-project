// ignore_for_file: avoid_print, prefer_const_constructors, unused_import, file_names, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:kingofcomfort/course_learning_code/second.dart';
import 'package:kingofcomfort/course_learning_code/third.dart';
import 'first.dart';
// ignore: duplicate_import
import 'second.dart';
// ignore: duplicate_import
import 'third.dart';

import 'fourth.dart';

import 'fifth.dart';

import 'sixth.dart';

import 'seventh.dart';

import 'eighth.dart';

import 'ninth.dart';

import 'tenth.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   textTheme: TextTheme(
      //     bodyMedium: TextStyle(color: Colors.blue),
      //   ),
      // ),
      home: ErtakKitob(),
    ),
  );
}

class ErtakKitob extends StatefulWidget {
  const ErtakKitob({super.key});

  @override
  State<ErtakKitob> createState() => _ErtakKitobState();
}

class _ErtakKitobState extends State<ErtakKitob> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Yoo(),
          First(),
          Second(),
          Third(),
          Fourth(),
          Fifth(),
          Sixth(),
          Seventh(),
          Eighth(),
          Ninth(),
          Tenth(),
        ],
      ),
    );
  }
}

class Yoo extends StatefulWidget {
  const Yoo({super.key});

  @override
  State<Yoo> createState() => _YooState();
}

class _YooState extends State<Yoo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: double.maxFinite,
          width: 510,
          decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage("images/ertak.jpg"),
                fit: BoxFit.cover,
              )),
        ),
      ),
    );
  }
}
