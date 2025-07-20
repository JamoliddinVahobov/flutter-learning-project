// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, unnecessary_import
// ignore: prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:getwidget/getwidget.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Imtihon(),
    ),
  );
}

class Imtihon extends StatefulWidget {
  const Imtihon({super.key});

  @override
  State<Imtihon> createState() => _ImtihonState();
}

class _ImtihonState extends State<Imtihon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "imtihon",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 13, 16, 198),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      "Welcome",
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 35),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 55, bottom: 0),
                    child: Text(
                      "Sohib Ahmad",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("images/w.jpg"),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      height: 50,
                      width: 100,
                      color: Colors.purple[300],
                      child: Center(
                        child: Text(
                          'Monday',
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    height: 50,
                    width: 100,
                    color: Colors.purple[300],
                    child: Center(
                      child: Text(
                        'Tuesday',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    height: 50,
                    width: 120,
                    color: Colors.purple[300],
                    child: Center(
                      child: Text(
                        'Wednesday',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    height: 50,
                    width: 100,
                    color: Colors.purple[300],
                    child: Center(
                      child: Text(
                        'Thursday',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    height: 50,
                    width: 90,
                    color: Colors.purple[300],
                    child: Center(
                      child: Text(
                        'Friday',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    height: 50,
                    width: 100,
                    color: Colors.purple[300],
                    child: Center(
                      child: Text(
                        'Saturday',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Container(
                      height: 50,
                      width: 100,
                      color: Colors.purple[300],
                      child: Center(
                        child: Text(
                          'Sunday',
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 10),
            child: Text(
              'Images',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    height: 170,
                    width: 230,
                    color: Colors.white,
                    child: Image(
                      image: AssetImage("images/get.webp"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 25,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                    height: 170,
                    width: 230,
                    color: Colors.white,
                    child: Image(
                      image: AssetImage("images/miss.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 20),
            child: Text(
              'All Category',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 190,
                  width: 155,
                  child: Card(
                    color: Colors.purple[300],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home,
                          color: Color.fromARGB(255, 4, 120, 214),
                          size: 30,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Commercial',
                              style: TextStyle(fontSize: 17),
                            ),
                            Text(
                              'Marketing',
                              style: TextStyle(fontSize: 17),
                            ),
                            GFButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/main');
                              },
                              text: "First Page",
                              blockButton: false,
                              shape: GFButtonShape.pills,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 190,
                  width: 155,
                  child: Card(
                    color: Color.fromARGB(255, 150, 3, 180),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.call,
                            color: Color.fromARGB(255, 187, 21, 216),
                            size: 30,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Phone and',
                                style: TextStyle(fontSize: 17),
                              ),
                              Text(
                                'Setting',
                                style: TextStyle(fontSize: 17),
                              ),
                              GFButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/a');
                                },
                                text: "Previous  Page",
                                blockButton: true,
                                color: Colors.green,
                                shape: GFButtonShape.pills,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 190,
                  width: 155,
                  child: Card(
                    color: Color.fromARGB(255, 2, 11, 167),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.car_crash,
                            color: const Color.fromARGB(255, 151, 97, 160),
                            size: 30,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Card and',
                                style: TextStyle(fontSize: 17),
                              ),
                              Text(
                                'vehicles',
                                style: TextStyle(fontSize: 17),
                              ),
                              GFButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/list');
                                },
                                text: "Next Page",
                                blockButton: false,
                                color: Colors.grey,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
