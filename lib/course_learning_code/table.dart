// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      // debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          leading: Icon(Icons.menu, color: Colors.white),
          title: Text(
            "Imtihon",
            style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.italic,
                letterSpacing: 8),
          ),
          centerTitle: true,
          toolbarHeight: 40,
        ),
        backgroundColor: Colors.teal,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Container(
                            height: 70,
                            color: Colors.white,
                            child: Center(
                              child: FittedBox(
                                child: Text(
                                  'Nissan',
                                  style: TextStyle(fontSize: 40),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 15),
                        Expanded(
                          child: Container(
                            height: 70,
                            color: Colors.white,
                            child: Center(
                              child: FittedBox(
                                child: Text(
                                  'Ferrari',
                                  style: TextStyle(fontSize: 40),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 15),
                        Expanded(
                          child: Container(
                            height: 70,
                            color: Colors.white,
                            child: Center(
                              child: FittedBox(
                                child: Text(
                                  'B M W',
                                  style: TextStyle(fontSize: 40),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CircleAvatar(
                          radius: 45,
                          backgroundImage: AssetImage("images/nissan.jpg"),
                        ),
                        CircleAvatar(
                          radius: 45,
                          backgroundImage: AssetImage("images/ferrari.jpg"),
                        ),
                        CircleAvatar(
                          radius: 45,
                          backgroundImage: AssetImage("images/bmw.jpg"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Table(
                  border: TableBorder.all(color: Colors.white, width: 2),
                  columnWidths: {0: FractionColumnWidth(0.4)},
                  children: [
                    TableRow(
                      children: [
                        TableCell(
                          child: Center(child: Text("Nissan")),
                        ),
                        TableCell(
                          child: Center(child: Text("Ferrari")),
                        ),
                        TableCell(
                          child: Center(child: Text("B M W")),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          child: Center(child: Text("Nissan GT-R")),
                        ),
                        TableCell(
                          child: Center(child: Text("Ferrari F 40")),
                        ),
                        TableCell(
                          child: Center(child: Text("B M W  X 7")),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          child: Center(child: Text("Nissan Maxima")),
                        ),
                        TableCell(
                          child: Center(child: Text("Ferrari 488 GTB")),
                        ),
                        TableCell(
                          child: Center(child: Text("B M W  M 8")),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          child: Center(child: Text("Nissan Altina")),
                        ),
                        TableCell(
                          child: Center(child: Text("Ferrari F 355")),
                        ),
                        TableCell(
                          child: Center(child: Text("B M W  M 4")),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 140,
                            color: Colors.blue,
                            child: Image(
                              image: AssetImage("images/nissan.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 140,
                            color: Colors.blue,
                            child: Image(
                              image: AssetImage("images/ferrari.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 140,
                            color: Colors.blue,
                            child: Image(
                              image: AssetImage("images/bmw.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 140,
                            color: Colors.blue,
                            child: Image(
                              image: AssetImage("images/nissan.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 140,
                            color: Colors.blue,
                            child: Image(
                              image: AssetImage("images/ferrari.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 140,
                            color: Colors.blue,
                            child: Image(
                              image: AssetImage("images/bmw.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
