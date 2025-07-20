// ignore_for_file: avoid_print, prefer_const_constructors, unused_import, file_names, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'Icons card',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 80,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 15,
                            offset: Offset(0, 10)),
                      ],
                      borderRadius: BorderRadius.circular(25)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home,
                        size: 50,
                        color: Colors.white,
                      ),
                      SizedBox(width: 35),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Heart",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          Text(
                            "Shaker",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  height: 80,
                  width: 250,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 15,
                            offset: Offset(0, 10)),
                      ],
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(25)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.camera_alt,
                        size: 50,
                        color: Colors.red,
                      ),
                      SizedBox(width: 35),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Heart",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          Text(
                            "Shaker",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  height: 80,
                  width: 250,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 15,
                            offset: Offset(0, 10)),
                      ],
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(25)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.wifi_off,
                        size: 50,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 35),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Heart",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          Text(
                            "Shaker",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 80,
                  width: 250,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 15,
                            offset: Offset(0, 10)),
                      ],
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(25)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.call,
                        size: 50,
                        color: Colors.blue,
                      ),
                      SizedBox(width: 35),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Heart",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          Text(
                            "Shaker",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 80,
                  width: 250,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 15,
                            offset: Offset(0, 10)),
                      ],
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(25)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.map,
                        size: 50,
                        color: Colors.pink,
                      ),
                      SizedBox(width: 35),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Heart",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          Text(
                            "Shaker",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 80,
                  width: 250,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 15,
                          offset: Offset(0, 10)),
                    ],
                    color: Colors.blue[900],
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.mic_off,
                        size: 50,
                        color: Colors.yellow,
                      ),
                      SizedBox(width: 35),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Heart",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          Text(
                            "Shaker",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 80,
                  width: 250,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 15,
                            offset: Offset(0, 10)),
                      ],
                      color: Colors.grey[700],
                      borderRadius: BorderRadius.circular(25)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.notifications_off_sharp,
                        size: 50,
                        color: Colors.red,
                      ),
                      SizedBox(width: 35),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Heart",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          Text(
                            "Shaker",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  height: 80,
                  width: 250,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 15,
                          offset: Offset(0, 10)),
                    ],
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        size: 55,
                        color: Color.fromARGB(255, 96, 91, 91),
                      ),
                      SizedBox(width: 35),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Heart",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          Text(
                            "Shaker",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  height: 80,
                  width: 250,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 15,
                            offset: Offset(0, 10)),
                      ],
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(25)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.book,
                        size: 50,
                        color: Colors.white,
                      ),
                      SizedBox(width: 35),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Heart",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          Text(
                            "Shaker",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 80,
                  width: 250,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 15,
                            offset: Offset(0, 10)),
                      ],
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(25)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.mail,
                        size: 50,
                        color: Colors.red,
                      ),
                      SizedBox(width: 35),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Heart",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          Text(
                            "Shaker",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 80,
                  width: 250,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 15,
                            offset: Offset(0, 10)),
                      ],
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(25)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.phone_android,
                        size: 50,
                        color: Colors.white,
                      ),
                      SizedBox(width: 35),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Heart",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          Text(
                            "Shaker",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 80,
                  width: 250,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 15,
                          offset: Offset(0, 10)),
                    ],
                    color: Colors.blue[900],
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.file_copy,
                        size: 50,
                        color: Colors.black,
                      ),
                      SizedBox(width: 35),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Heart",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          Text(
                            "Shaker",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                    ],
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
