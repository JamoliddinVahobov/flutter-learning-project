// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, unnecessary_import
// ignore: prefer_const_literals_to_create_immutables
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Rockie(),
    ),
  );
}

final creepy = TextStyle(
  color: Colors.black,
  fontSize: 16,
  fontWeight: FontWeight.w600,
);

class Rockie extends StatefulWidget {
  const Rockie({super.key});

  @override
  State<Rockie> createState() => _RockieState();
}

class _RockieState extends State<Rockie> {
  List people = [
    Nice(
      message: "Ad Updates Approval",
      date: "Due: Jun 28",
      image: "images/ronald.jpg",
    ),
    Nice(
      message: "June Ad Budget",
      date: "Due: Jun 17",
      image: "images/potter.jpg",
    ),
    Nice(
      message: "Pricing Page",
      date: "Due: May 14",
      image: "images/messi.jpg",
    ),
    Nice(
      message: "Confirm Launch Date",
      date: "Due: Jun 01",
      image: "images/odilbek.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(
                25,
              ),
              topRight: Radius.circular(
                25,
              ),
            ),
          ),
          backgroundColor: Colors.green,
          title: Text(
            'In Progress',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: people.map((person) => design(person)).toList(),
              ),
              Container(
                height: 75,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 120, 119, 119),
                      offset: Offset(2, 0),
                      blurRadius: 5,
                    )
                  ],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(
                      25,
                    ),
                    bottomRight: Radius.circular(
                      25,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add,
                      size: 40,
                      color: Colors.blue,
                    ),
                    Text(
                      "Task",
                      style: TextStyle(color: Colors.blue, fontSize: 18),
                    ),
                  ],
                ),
              )
            ]));
  }
}

class Nice {
  String? button;
  String? message;
  String? date;
  String? image;
  Nice({
    this.button,
    this.image,
    this.message,
    this.date,
  });
}

Widget design(person) {
  return Column(
    children: [
      Padding(
        padding: EdgeInsets.only(
          top: 8,
          left: 10,
          right: 10,
        ),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                8,
              ),
              boxShadow: [
                BoxShadow(
                    color: Color.fromARGB(255, 149, 145, 145),
                    blurRadius: 5,
                    offset: Offset(
                      0,
                      3,
                    )),
              ]),
          height: 100,
          child: Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      person.message,
                      style: creepy,
                    ),
                    Text(
                      person.date,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    PopupMenuButton(onSelected: (value) {
                      // ignore: avoid_print
                      print('$value');
                    }, itemBuilder: (BuildContext context) {
                      return <PopupMenuEntry>[
                        PopupMenuItem(
                          value: 'Are you crazy?',
                          child: Text("Don't click on it"),
                        ),
                        PopupMenuItem(
                          value: 'You must be crazy',
                          child: Text("Don't press this stupid button"),
                        ),
                        PopupMenuItem(
                          value:
                              'I have told you,You are crazy and stupid enough to click on those buttons',
                          child: Text('Do you really want to know who you are'),
                        ),
                      ];
                    }),
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage(
                        person.image,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ],
  );
}
