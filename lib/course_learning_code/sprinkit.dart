// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, unnecessary_import
// ignore: prefer_const_literals_to_create_immutables
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:glass/glass.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:kingofcomfort/course_learning_code/abc.dart';
import 'package:kingofcomfort/course_learning_code/claycontainer.dart';
import 'package:kingofcomfort/course_learning_code/imtihon.dart';
import 'package:kingofcomfort/course_learning_code/listwheelscrollview.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/rock': (context) => Imtihon(),
        '/a': (context) => Yeah(),
        '/gradient': (context) => ComeOnMAn(),
      },
      home: Fonts(),
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

class Fonts extends StatefulWidget {
  const Fonts({super.key});

  @override
  State<Fonts> createState() => _FontsState();
}

class _FontsState extends State<Fonts> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 5),
    ).then((value) {
      Navigator.push(
        // ignore: use_build_context_synchronously
        context,
        MaterialPageRoute(
          builder: (context) => Rock(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'Image with Sprinkit',
          style: GoogleFonts.dancingScript(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onDoubleTap: () {
                  Navigator.pushNamed(context, '/rock');
                },
                onTap: () {
                  Navigator.pushNamed(context, '/a');
                },
                onLongPress: () {
                  Navigator.pushNamed(context, '/gradient');
                },
                child: Container(
                  height: 300,
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage("images/image13.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SpinKitCircle(color: Colors.purple, size: 150),
            ],
          ),
        ),
      ),
    );
  }
}
