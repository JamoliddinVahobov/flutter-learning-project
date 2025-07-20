// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, unnecessary_import
// ignore: prefer_const_literals_to_create_immutables

// import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:flutter/widgets.dart';
// import 'package:weather_icons/weather_icons.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      home: Rock(),
    ),
  );
}

class Rock extends StatefulWidget {
  const Rock({super.key});

  @override
  State<Rock> createState() => _RockState();
}

class _RockState extends State<Rock> {
  List wonders = [
    "images/1.jpg",
    "images/2.jpg",
    "images/3.webp",
    "images/4.jpg",
    "images/5.webp",
    "images/6.jpg",
    "images/7.webp",
  ];
  int current = 0;
  // final yep = TextStyle(fontSize: 30, color: Color.fromARGB(255, 81, 2, 159));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "7 Wonders of the World",
          style: TextStyle(),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: ListWheelScrollView(
                itemExtent: 200,
                diameterRatio: 1.04,
                children: wonders
                    .map((you) => Container(
                          height: 70,
                          width: 300,
                          color: Color.fromARGB(255, 255, 255, 255),
                          child: Center(
                            child: Image.asset(
                              you,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ))
                    .toList(),
              ),
            ),

            BottomNavigationBar(
              backgroundColor: Colors.green,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.blue[800],
              unselectedLabelStyle: TextStyle(height: 0),
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.arrow_back,
                    ),
                    label: ""),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.arrow_forward,
                    ),
                    label: ""),
              ],
              onTap: (index) {
                switch (index) {
                  case 0:
                    Navigator.pushNamed(context, '/main');
                  // break;
                  case 1:
                    Navigator.pushNamed(context, '/rock');
                  case 2:
                    Navigator.pushNamed(context, '/s');
                }
              },
            ),

            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: [
            //     GFIconButton(
            //       onPressed: () {
            //         Navigator.pushNamed(context, '/main');
            //       },
            //       icon: Icon(Icons.home),
            //     ),
            //     GFButton(
            //       onPressed: () {
            //         Navigator.pushNamed(context, '/rock');
            //       },
            //       text: "Previous Page",
            //       icon: Icon(
            //         Icons.arrow_back,
            //         color: Colors.white,
            //       ),
            //     ),
            //     GFButton(
            //       onPressed: () {
            //         Navigator.pushNamed(context, '/s');
            //       },
            //       text: "Next Page",
            //       icon: Icon(
            //         Icons.arrow_forward,
            //         color: Colors.white,
            //       ),
            //     ),
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
