// ignore_for_file: avoid_print, prefer_const_constructors, unused_import, file_names, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            // iconTheme: IconThemeData(color: Colors.white),
            backgroundColor: Colors.grey[700],
            title: Text(
              'Networkimage and CircleAvatar',
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
          ),
          backgroundColor: Colors.blue[300],
          body: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("images/britain.png"),
                        radius: 50,
                      ),
                      SizedBox(width: 20),
                      Container(
                        height: 30,
                        width: 100,
                        color: Colors.blue[800],
                        child: Center(
                          child: Text(
                            'English',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontStyle: FontStyle.italic),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("images/russia.jpg"),
                        radius: 50,
                      ),
                      SizedBox(width: 20),
                      Container(
                        height: 30,
                        width: 100,
                        color: Colors.blue[800],
                        child: Center(
                          child: Text(
                            'Russian',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontStyle: FontStyle.italic),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("images/america.png"),
                        radius: 50,
                      ),
                      SizedBox(width: 20),
                      Container(
                        height: 30,
                        width: 100,
                        color: Colors.blue[800],
                        child: Center(
                          child: Text(
                            'America',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontStyle: FontStyle.italic),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("images/uzbekistan.jpg"),
                        radius: 50,
                      ),
                      SizedBox(width: 20),
                      Container(
                        height: 30,
                        width: 100,
                        color: Colors.blue[800],
                        child: Center(
                          child: Text(
                            'Uzbekistan',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontStyle: FontStyle.italic),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("images/germany.webp"),
                        radius: 50,
                      ),
                      SizedBox(width: 20),
                      Container(
                        height: 30,
                        width: 100,
                        color: Colors.blue[800],
                        child: Center(
                          child: Text(
                            'Germany',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontStyle: FontStyle.italic),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("images/china1.jpg"),
                        radius: 50,
                      ),
                      SizedBox(width: 20),
                      Container(
                        height: 30,
                        width: 100,
                        color: Colors.blue[800],
                        child: Center(
                          child: Text(
                            'China',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontStyle: FontStyle.italic),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("images/korea.jpg"),
                        radius: 50,
                      ),
                      SizedBox(width: 20),
                      Container(
                        height: 30,
                        width: 100,
                        color: Colors.blue[800],
                        child: Center(
                          child: Text(
                            'Korea',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontStyle: FontStyle.italic),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("images/saudi.jpg"),
                        radius: 50,
                      ),
                      SizedBox(width: 20),
                      Container(
                        height: 30,
                        width: 100,
                        color: Colors.blue[800],
                        child: Center(
                          child: Text(
                            'Saudi Arabia',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontStyle: FontStyle.italic),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          )),
    ),
  );
}
