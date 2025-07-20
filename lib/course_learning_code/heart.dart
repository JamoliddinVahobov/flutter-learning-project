// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, unnecessary_import
// ignore: prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    MaterialApp(
      // debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Flutter Image Capture Bug",
            style: TextStyle(
                color: Colors.white,
                // fontStyle: FontStyle.italic,
                // letterSpacing: 8,
                fontWeight: FontWeight.w500,
                fontSize: 18),
          ),

          // toolbarHeight: 90,
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 250,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.elliptical(550, 550),
                      topRight: Radius.elliptical(380, 180),
                      topLeft: Radius.elliptical(270, 270),
                      // bottomRight: Radius.elliptical(0, 10),
                    ),
                  ),
                ),
                Container(
                  height: 250,
                  width: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/image17.jpg"),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.elliptical(550, 550),
                      topLeft: Radius.elliptical(380, 180),
                      topRight: Radius.elliptical(270, 270),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 320,
              width: 500,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    width: 1,
                    color: Color.fromARGB(255, 106, 103, 103),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                      child: Padding(
                    padding: const EdgeInsets.only(bottom: 3),
                    child: Text("Capture image"),
                  )),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 290,
                          width: 242,
                          decoration: BoxDecoration(
                            color: Colors.red,
                          ),
                        ),
                        Container(
                          height: 290,
                          width: 242,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            image: DecorationImage(
                              image: AssetImage("images/image17.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
