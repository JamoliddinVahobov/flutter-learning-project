// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, unnecessary_import
// ignore: prefer_const_literals_to_create_immutables
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:getwidget/getwidget.dart';
import 'package:kingofcomfort/course_learning_code/abc.dart';
import 'package:kingofcomfort/course_learning_code/borderradius.dart';
import 'package:kingofcomfort/course_learning_code/claycontainer.dart';
import 'package:kingofcomfort/course_learning_code/gridview.dart';
import 'package:kingofcomfort/course_learning_code/imtihon.dart';
import 'package:kingofcomfort/course_learning_code/listwheelscrollview.dart';
import 'package:kingofcomfort/course_learning_code/talebook.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Rockie(),
      routes: {
        '/a': (context) => Yeah(),
        '/rock': (context) => Imtihon(),
        '/list': (context) => Rock(),
        '/main': (context) => Rockie(),
        '/s': (context) => SoliqApp(),
        '/kitob': (context) => ErtakKitob(),
        '/gradient': (context) => ComeOnMAn(),
        '/border': (context) => Hello(),
      },
    ),
  );
}

final st = TextStyle(
  fontWeight: FontWeight.w700,
  fontSize: 18,
);
final creepy = TextStyle(
  color: Colors.black,
  fontSize: 15,
  fontWeight: FontWeight.w800,
);

class Rockie extends StatefulWidget {
  const Rockie({super.key});

  @override
  State<Rockie> createState() => _RockieState();
}

class _RockieState extends State<Rockie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 244, 242, 242),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Welcome to my awesome app",
              style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            GFButton(
              onPressed: () {
                Navigator.pushNamed(context, '/a');
              },
              text: "Next Page",
              blockButton: true,
            ),
          ],
        ),
      ),
    );
  }
}
