// ignore_for_file: avoid_print, prefer_const_constructors, unused_import, file_names, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   textTheme: TextTheme(
      //     bodyMedium: TextStyle(color: Colors.blue),
      //   ),
      // ),
      home: LoginView(),
    ),
  );
}

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 300),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 700,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.teal[300],
                border: Border.all(width: 6, color: Colors.black),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Stack(
                children: [
                  Positioned(
                    child: Container(
                      height: 620,
                      width: 350,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 18, 17, 17),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(70),
                          topLeft: Radius.circular(33),
                          topRight: Radius.circular(33),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 470,
                    left: 30,
                    child: Text(
                      "FRIDAY  6:00 PM",
                      style: TextStyle(
                          fontSize: 8,
                          color: Color.fromARGB(255, 194, 186, 186)),
                    ),
                  ),
                  Positioned(
                    top: 485,
                    left: 30,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Adobe XD Live Event in",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Text(
                          "Europe",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 560,
                    left: 53,
                    child: CircleAvatar(
                      radius: 13.5,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 12,
                        backgroundImage: AssetImage("images/harry.jpg"),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 560,
                    left: 38,
                    child: CircleAvatar(
                      radius: 13.5,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 12,
                        backgroundImage: AssetImage("images/em.jpg"),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 592,
                    left: 275,
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.add,
                        size: 27,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 673,
                    left: 100,
                    child: SizedBox(
                      height: 13,
                      width: 150,
                      child: Card(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Positioned(
                      top: 565,
                      left: 90,
                      child: Text(
                        'join Harry,Eminem & 10 others',
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 10,
                            color: Color.fromARGB(255, 194, 183, 183)),
                      )),
                  Positioned(
                    top: 505,
                    left: 240,
                    child: Text(
                      "Xd",
                      style: TextStyle(
                          fontSize: 60, color: Color.fromARGB(255, 78, 72, 72)),
                    ),
                  ),
                  Positioned(
                    child: Container(
                      height: 445,
                      width: 350,
                      decoration: BoxDecoration(
                        color: Colors.purple[700],
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(70),
                          topLeft: Radius.circular(33),
                          topRight: Radius.circular(33),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 295,
                    left: 30,
                    child: Text(
                      "TUESDAY 5:30 PM",
                      style: TextStyle(
                          fontSize: 8,
                          color: Color.fromARGB(255, 199, 191, 191)),
                    ),
                  ),
                  Positioned(
                    top: 310,
                    left: 30,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Practice French, English",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Text(
                          "And Chinese",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 385,
                    left: 53,
                    child: CircleAvatar(
                      radius: 13.5,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 12,
                        backgroundImage: AssetImage("images/em.jpg"),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 385,
                    left: 38,
                    child: CircleAvatar(
                      radius: 13.5,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 12,
                        backgroundImage: AssetImage("images/ron.jpg"),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 390,
                      left: 90,
                      child: Text(
                        'join Marshall,Ron & 10 others',
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 10,
                            color: Color.fromARGB(255, 212, 202, 202)),
                      )),
                  Positioned(
                      top: 335,
                      left: 230,
                      child: Icon(
                        Icons.language,
                        size: 75,
                        color: Color.fromARGB(255, 88, 82, 82),
                      )),
                  Positioned(
                    child: Container(
                      height: 270,
                      width: 350,
                      decoration: BoxDecoration(
                        color: Colors.pink[400],
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(70),
                          topLeft: Radius.circular(33),
                          topRight: Radius.circular(33),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 122,
                    left: 30,
                    child: Text(
                      "TODAY 5:30 PM",
                      style: TextStyle(
                          fontSize: 8,
                          color: Color.fromARGB(255, 199, 191, 191)),
                    ),
                  ),
                  Positioned(
                    top: 137,
                    left: 30,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Yoga and Meditation",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Text(
                          "for Beginners",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 210,
                    left: 53,
                    child: CircleAvatar(
                      radius: 13.5,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 12,
                        backgroundImage: AssetImage("images/50-cent.webp"),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 210,
                    left: 38,
                    child: CircleAvatar(
                      radius: 13.5,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 12,
                        backgroundImage: AssetImage("images/ice cube.jpg"),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 215,
                      left: 90,
                      child: Text(
                        'join Ice Cube,50-cent & 10 others',
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 10,
                            color: Color.fromARGB(255, 212, 202, 202)),
                      )),
                  Positioned(
                    top: 150,
                    left: 235,
                    child: Icon(
                      (Icons.show_chart),
                      size: 75,
                      color: Color.fromARGB(255, 143, 134, 134),
                    ),
                  ),
                  Positioned(
                    child: Container(
                      height: 105,
                      width: 350,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(60),
                            topLeft: Radius.circular(31),
                            topRight: Radius.circular(31)),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 7,
                            left: 15,
                            child: Text(
                              '9:41',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Positioned(
                            left: 60,
                            child: Container(
                              height: 25,
                              width: 195,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(16),
                                  bottomRight: Radius.circular(16),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 7,
                            left: 260,
                            child: Icon(
                              Icons.signal_cellular_4_bar,
                              size: 18,
                            ),
                          ),
                          Positioned(
                            top: 7,
                            left: 280,
                            child: Icon(
                              Icons.wifi,
                              size: 18,
                            ),
                          ),
                          Positioned(
                            top: 7,
                            left: 300,
                            child: Icon(
                              Icons.battery_4_bar_rounded,
                              size: 18,
                            ),
                          ),
                          Positioned(
                            top: 40,
                            left: 50,
                            child: CircleAvatar(
                              radius: 21,
                              backgroundColor: Colors.black,
                              child: CircleAvatar(
                                radius: 20,
                                backgroundImage: AssetImage("images/em.jpg"),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 32,
                            left: 75,
                            child: CircleAvatar(
                              radius: 9,
                              backgroundColor: Colors.teal,
                              child: Text(
                                "12",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 40,
                            left: 150,
                            child: CircleAvatar(
                              radius: 21,
                              backgroundColor: Colors.black,
                              child: CircleAvatar(
                                radius: 20,
                                child: Icon(
                                  Icons.trending_up_sharp,
                                  size: 25,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 40,
                            left: 250,
                            child: CircleAvatar(
                              radius: 21,
                              backgroundColor:
                                  Color.fromARGB(255, 125, 120, 120),
                              child: CircleAvatar(
                                radius: 20.5,
                                child: Icon(
                                  Icons.heart_broken_outlined,
                                  size: 25,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 82,
                            left: 60,
                            child: Text(
                              "YOU",
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                          Positioned(
                            top: 82,
                            left: 143,
                            child: Text(
                              "TRENDING",
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                          Positioned(
                            top: 82,
                            left: 250,
                            child: Text(
                              "HEALTH",
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
