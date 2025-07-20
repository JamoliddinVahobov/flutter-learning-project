// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore
// ignore: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      // debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Expanded widget',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.teal[700],
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 250,
                      width: 200,
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 250,
                      width: 200,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 250,
                      width: 200,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 250,
                      width: 200,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 250,
                      width: 200,
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 250,
                      width: 200,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 250,
                      width: 200,
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 250,
                      width: 200,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 250,
                      width: 200,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}
