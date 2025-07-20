// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 52, 170, 5),
          title: Text(
            'Programming With Jamoliddin',
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
        ),
        backgroundColor: Color.fromARGB(255, 250, 243, 43),
        body: Center(
          child: Container(
            height: 600,
            width: 800,
            color: Color.fromARGB(255, 5, 76, 68),
            child: Center(
              child: Container(
                height: 500,
                width: 700,
                color: Color.fromARGB(201, 27, 30, 226),
                child: Center(
                  child: Container(
                    height: 400,
                    width: 600,
                    color: Colors.teal[500],
                    child: Center(
                      child: Container(
                        height: 300,
                        width: 500,
                        color: Colors.blue,
                        child: Center(
                          child: Container(
                            height: 200,
                            width: 400,
                            color: Colors.pink,
                            child: Center(
                              child: Container(
                                height: 100,
                                width: 300,
                                color: Color.fromARGB(255, 30, 4, 114),
                                child: Center(
                                  child: Container(
                                    height: 25,
                                    width: 225,
                                    color: Colors.amber,
                                    child: Center(
                                      child: Text(
                                        'I am a programming addict',
                                        style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 105, 5, 10),
                                            fontWeight: FontWeight.w900,
                                            fontSize: 15),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
