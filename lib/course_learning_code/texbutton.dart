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
      // theme: ThemeData(
      //   textTheme: TextTheme(
      //     bodyMedium: TextStyle(color: Colors.white),
      //   ),
      //   iconTheme: IconThemeData(color: Colors.white),
      // ),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Monday, August 24",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 0,
                ),
                Text(
                  "(4)",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 110,
                width: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: AssetImage("images/burger.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Salmon Burger",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "- 1 +",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "\$ 10.0",
                      style: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 158, 154, 154)),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 251, 178, 69),
                          borderRadius: BorderRadius.circular(
                            3,
                          )),
                      child: Center(
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 13,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 110,
                width: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: AssetImage("images/pizza.webp"),
                      fit: BoxFit.cover),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Banh Mi Pizza",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "- 1 +",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "\$ 11.0",
                      style: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 158, 154, 154)),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 251, 178, 69),
                          borderRadius: BorderRadius.circular(
                            3,
                          )),
                      child: Center(
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 13,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 110,
                width: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: AssetImage("images/chick.jpg"), fit: BoxFit.cover),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Afaham chicken",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "- 1 +",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "\$ 12.0",
                      style: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 158, 154, 154)),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 251, 178, 69),
                          borderRadius: BorderRadius.circular(
                            3,
                          )),
                      child: Center(
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 13,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 110,
                width: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: AssetImage("images/caramel.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Caramel saurce",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "- 1 +",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "\$ 22.0",
                      style: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 158, 154, 154)),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 251, 178, 69),
                          borderRadius: BorderRadius.circular(
                            3,
                          )),
                      child: Center(
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 13,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Total:",
                style: TextStyle(
                    fontSize: 15, color: Color.fromARGB(255, 126, 123, 123)),
              ),
              SizedBox(
                width: 180,
              ),
              Text(
                "59.0",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
          Container(
            height: 55,
            width: 300,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 217, 200, 8),
              borderRadius: BorderRadius.circular(
                70,
              ),
            ),
            child: TextButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Check out these products"),
                        content:
                            Text("Here are the products you can check out!"),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text("Close"),
                          ),
                        ],
                      );
                    });
              },
              child: Center(
                child: Text(
                  'CheckOut',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w900,
                      color: Colors.black),
                ),
              ),
            ),
          ),
          Container(
            height: 55,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 245, 243, 243),
              border: Border(
                top: BorderSide(
                  color: Color.fromARGB(255, 211, 208, 208),
                  width: 0.7,
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.home,
                      color: Color.fromARGB(255, 95, 93, 93),
                      size: 23,
                    ),
                    Icon(
                      Icons.trolley,
                      color: Color.fromARGB(255, 235, 176, 27),
                      size: 23,
                    ),
                    Icon(
                      Icons.person,
                      color: Color.fromARGB(255, 95, 93, 93),
                      size: 23,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Home",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 76, 75, 75),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 6,
                      ),
                      child: Text(
                        "Cart",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 235, 176, 27),
                        ),
                      ),
                    ),
                    Text(
                      "Profile",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 76, 75, 75),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
