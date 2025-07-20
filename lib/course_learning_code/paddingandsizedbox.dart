// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, unnecessary_import
// ignore: prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SoliqApp(),
    ),
  );
}

class SoliqApp extends StatefulWidget {
  const SoliqApp({super.key});

  @override
  State<SoliqApp> createState() => _SoliqAppState();
}

class _SoliqAppState extends State<SoliqApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Container(
          height: 585,
          width: 290,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 231, 228, 228),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Center(
            child: Container(
              height: 565,
              width: 270,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      height: 250,
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            image: AssetImage('images/image15.jpg'),
                            fit: BoxFit.cover),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 90, 86, 86),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.arrow_back_ios,
                                    color: Color.fromARGB(255, 212, 208, 208),
                                    size: 13,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 80,
                              ),
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 92, 88, 88),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.bus_alert_outlined,
                                    color: Color.fromARGB(255, 208, 200, 200),
                                    size: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 50),
                          SizedBox(
                            height: 80,
                            width: 210,
                            child: Card(
                              color: Colors.black.withOpacity(0.7),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        'Andes Mountain',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        'Price',
                                        style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 212, 204, 204),
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 8),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.location_on_outlined,
                                        size: 18,
                                        color: const Color.fromARGB(
                                            255, 208, 203, 203),
                                      ),
                                      Text(
                                        'South,America',
                                        style: TextStyle(
                                          fontSize: 11,
                                          color: const Color.fromARGB(
                                              255, 198, 187, 187),
                                        ),
                                      ),
                                      SizedBox(width: 55),
                                      Text(
                                        "230\$",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: const Color.fromARGB(
                                              255, 198, 187, 187),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 18, right: 30, top: 20),
                        child: Text(
                          "Overview",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 22),
                        child: Text(
                          'Details',
                          style: TextStyle(
                              fontSize: 12,
                              color: const Color.fromARGB(255, 65, 63, 63),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 195, 186, 186),
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: Icon(
                              Icons.access_time_filled,
                              size: 13,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 4),
                          Text(
                            '8 hours',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 195, 186, 186),
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: Icon(
                              Icons.cloud,
                              size: 13,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 4),
                          Text(
                            '16°C',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 195, 186, 186),
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: Icon(
                              Icons.star_rounded,
                              size: 15,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 4),
                          Text(
                            '4.5',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 15, 20),
                    child: Text(
                      "Mountain ranges are a series of mountains occurring in a linear pattern and connected by high ground. They are formed by a number of geological processes with most being formed through tectonic plate movement. Most of the world’s tallest mountain ranges are located.",
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      height: 47,
                      width: 230,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Book now',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(width: 20),
                          Icon(
                            Icons.telegram,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
