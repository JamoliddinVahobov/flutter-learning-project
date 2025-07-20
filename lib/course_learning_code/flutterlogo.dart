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
            "Flutter logo",
            style: TextStyle(
                color: Colors.white,
                // fontStyle: FontStyle.italic,
                // letterSpacing: 8,
                fontWeight: FontWeight.w500,
                fontSize: 18),
          ),
          leading: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),

          // toolbarHeight: 90,
          backgroundColor: Colors.blue[800],
          centerTitle: true,
        ),
        backgroundColor: Colors.blue,
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 100,
                  width: 320,
                  color: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 60),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FlutterLogo(size: 80),
                        Text(
                          "Flutter",
                          style: TextStyle(color: Colors.white, fontSize: 60),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 130,
                  width: 320,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Flutter",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Developer",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 80),
                  child: SizedBox(
                    height: 250,
                    width: 320,
                    child: Text(
                      "Flutter is an open-source UI (User Interface) software development kit created by Google. It's primarily used for crafting natively compiled applications for mobile, web, and desktop from a single codebase. Flutter enables developers to build beautiful, fast, and expressive user interfaces using a reactive framework.",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 190,
                  width: 500,
                  color: const Color.fromARGB(255, 41, 39, 39),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 60),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                              ),
                              child: Text(
                                "Detect App State",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ),
                            Text(
                              "Using",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 50, left: 15),
                              child: Text(
                                "WidgetsBindingObserver",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 160, top: 60),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FlutterLogo(
                                size: 30,
                              ),
                              Text(
                                "Flutter / Dart",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 130),
                  child: Container(
                    height: 300,
                    width: 700,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        image: DecorationImage(
                            image: AssetImage("images/image27.jpg"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
