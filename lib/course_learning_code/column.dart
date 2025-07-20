// ignore_for_file: avoid_print, prefer_const_constructors, unused_import, file_names
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'data',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 60,
              width: 2000,
              color: Colors.red,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    color: Colors.yellow,
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            Container(
              height: 125,
              width: 2000,
              color: Colors.yellow,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    color: Colors.blue,
                  )
                ],
              ),
            ),
            Container(
              height: 180,
              width: 2000,
              color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    color: Colors.black,
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    color: Colors.black,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
