// ignore_for_file: avoid_print, prefer_const_constructors, unused_import, file_names, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:kingofcomfort/course_learning_code/second.dart';
import 'package:kingofcomfort/course_learning_code/third.dart';
import 'package:clay_containers/clay_containers.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   textTheme: TextTheme(
      //     bodyMedium: TextStyle(color: Colors.blue),
      //   ),
      // ),
      home: ComeOnMAn(),
    ),
  );
}

class ComeOnMAn extends StatefulWidget {
  const ComeOnMAn({super.key});

  @override
  State<ComeOnMAn> createState() => _ComeOnMAnState();
}

class _ComeOnMAnState extends State<ComeOnMAn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.green[800],
      //   title: Text(
      //     'Decoration',
      //     style: TextStyle(color: Colors.white),
      //   ),
      //   centerTitle: true,
      // ),
      backgroundColor: Colors.pink[100],
      body: Center(
        child: Container(
          height: 300,
          width: 500,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              stops: [0.5, 0.5],
              colors: [Colors.white, Color.fromARGB(255, 6, 120, 109)],
            ),
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '20- Best Free',
                      style: TextStyle(
                          color: Colors.teal,
                          fontWeight: FontWeight.w600,
                          fontSize: 13),
                    ),
                    Text(
                      'Personal Website',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(height: 1),
                    Text(
                      'Templates and Themes',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                    ),
                    SizedBox(height: 3),
                    Text(
                      'I can not see what is written here that is it man',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 7),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 10,
                // ignore: sized_box_for_whitespace
                child: Container(
                  height: 350,
                  width: 250,
                  child: Image(
                      image: NetworkImage(
                          "https://static.vecteezy.com/system/resources/previews/019/900/322/non_2x/happy-young-cute-illustration-face-profile-png.png")),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
