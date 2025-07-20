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
            'Icons',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 200,
                  width: 150,
                  color: Colors.orange,
                  child: Icon(
                    Icons.window_sharp,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
                Column(
                  children: [
                    Container(
                      height: 100,
                      width: 350,
                      color: Colors.pink,
                      child: Icon(
                        Icons.wifi,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 100,
                          width: 140,
                          color: Colors.green,
                          child: Icon(
                            Icons.tv,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 210,
                          color: Colors.grey,
                          child: Icon(
                            Icons.map,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 180,
                  width: 150,
                  color: Colors.red,
                  child: Icon(
                    Icons.send,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
                Container(
                  height: 180,
                  width: 140,
                  color: Colors.purple[300],
                  child: Icon(
                    Icons.bluetooth,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
                Container(
                  height: 180,
                  width: 210,
                  color: Colors.purple[300],
                  child: Icon(
                    Icons.quick_contacts_dialer,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 290,
                  color: Colors.blue,
                  child: Icon(
                    Icons.battery_6_bar_sharp,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
                Container(
                  height: 100,
                  width: 210,
                  color: Colors.teal,
                  child: Center(
                    child: Icon(
                      Icons.calculate_outlined,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 100,
              width: 500,
              color: Colors.brown,
              child: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.white,
                size: 35,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
