// ignore_for_file: avoid_print, prefer_const_constructors, unused_import, file_names, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 10,
              left: 600,
              child: Column(
                children: [
                  Container(
                    height: 30,
                    width: 400,
                    color: Colors.purple[800],
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Icon(Icons.sim_card,
                              color: Colors.white, size: 15),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 220),
                          child: Icon(Icons.signal_cellular_4_bar,
                              color: Colors.white, size: 15),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 640,
                    width: 400,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 3, 70, 64),
                          blurRadius: 25,
                          offset: Offset(15, 15),
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          child: Container(
                            height: 200,
                            width: 400,
                            decoration: BoxDecoration(
                              color: Colors.purple,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 140),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Icon(Icons.menu,
                                      color: Colors.white, size: 25),
                                  SizedBox(width: 40),
                                  Text(
                                    'Profile',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 30),
                                  ),
                                  SizedBox(width: 40),
                                  Icon(
                                    Icons.settings,
                                    color: Colors.white,
                                    size: 25,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 370,
                          left: 21.5,
                          child: Card(
                            color: Colors.white,
                            elevation: 5,
                            shadowColor: Colors.grey,
                            child: SizedBox(
                              height: 150,
                              width: 350,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "John Rambo",
                                      style: TextStyle(
                                          color: Colors.purple, fontSize: 25),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          "Age: 25",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Row(
                                          children: [
                                            CircleAvatar(
                                                radius: 8,
                                                backgroundColor: Colors.purple,
                                                child: Center(
                                                  child: Text(
                                                    '\$',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 12),
                                                  ),
                                                )),
                                            Text("1500"),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.star_sharp,
                                              color: Colors.purple,
                                              size: 25,
                                            ),
                                            Icon(
                                              Icons.star_sharp,
                                              color: Colors.purple,
                                              size: 25,
                                            ),
                                            Icon(
                                              Icons.star_sharp,
                                              color: Colors.purple,
                                              size: 25,
                                            ),
                                            Icon(
                                              Icons.star_sharp,
                                              color: Colors.purple,
                                              size: 25,
                                            ),
                                            Icon(
                                              Icons.star_outline_outlined,
                                              color: Colors.purple,
                                              size: 25,
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 272,
                          left: 18,
                          child: Card(
                            elevation: 10,
                            shadowColor: Colors.purple,
                            color: Colors.white,
                            child: SizedBox(
                              height: 90,
                              width: 120,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    '542',
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Text('Likes'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 12),
                                    child: Container(
                                      height: 5,
                                      width: 118,
                                      color: Colors.purple,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 272,
                          left: 148,
                          child: Card(
                            elevation: 10,
                            shadowColor: Colors.blue,
                            color: Colors.white,
                            child: SizedBox(
                              height: 90,
                              width: 110,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    '670',
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Text('Rides'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 12),
                                    child: Container(
                                      height: 5,
                                      width: 118,
                                      color: Colors.blue,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 272,
                          left: 268,
                          child: Card(
                            elevation: 10,
                            shadowColor: Colors.red,
                            color: Colors.white,
                            child: SizedBox(
                              height: 90,
                              width: 110,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    '10',
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Text('\$ per ride'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 12),
                                    child: Container(
                                      height: 5,
                                      width: 118,
                                      color: Colors.purple,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 70,
                          left: 155,
                          child: CircleAvatar(
                            radius: 45,
                            backgroundImage: AssetImage("images/coffee.jpg"),
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
