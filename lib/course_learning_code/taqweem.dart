// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutable, prefer_const_literals_to_create_immutables, sized_box_for_whitespace
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      // theme: ThemeData(
      //   textTheme: TextTheme(
      //     bodyMedium: TextStyle(color: Colors.white),
      //   ),
      // ),
      // debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.teal,
        //   leading: Icon(Icons.menu, color: Colors.white),
        //   title: Text(
        //     "Imtihon",
        //     style: TextStyle(
        //         color: Colors.white,
        //         fontSize: 25,
        //         fontWeight: FontWeight.w900,
        //         fontStyle: FontStyle.italic,
        //         letterSpacing: 8),
        //   ),
        //   centerTitle: true,
        //   toolbarHeight: 40,
        // ),
        // backgroundColor: Colors.teal,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30, right: 30, top: 20),
                child: Expanded(
                  child: Table(
                    border: TableBorder.all(color: Colors.black, width: 2),
                    columnWidths: {
                      0: FractionColumnWidth(0.05),
                      1: FractionColumnWidth(0.05),
                      2: FractionColumnWidth(0.11),
                      3: FractionColumnWidth(0.08),
                      4: FractionColumnWidth(0.08),
                    },
                    children: [
                      TableRow(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 16, 150, 136)),
                        children: [
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  FittedBox(
                                    child: Text(
                                      "RO'ZA",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  FittedBox(
                                    child: Text(
                                      "KUNLARI",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  FittedBox(
                                    child: Text(
                                      "APREL",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  FittedBox(
                                    child: Text(
                                      "MAY",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(
                                  child: Text(
                                    "HAFTA KUNLARI",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(
                                  child: Text(
                                    "SAHARLIK",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(
                                  child: Text(
                                    "IFTORLIK",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text(
                                  "1",
                                  style: TextStyle(
                                    color: Colors.teal,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text(
                                  "24",
                                  style: TextStyle(color: Colors.teal),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(
                                  child: Text(
                                    "JUMA",
                                    style: TextStyle(color: Colors.teal),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text(
                                  "4:06",
                                  style: TextStyle(color: Colors.teal),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(
                                    child: Text(
                                  "19:13",
                                  style: TextStyle(color: Colors.teal),
                                )),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("2"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("25"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(
                                  child: Text(
                                    "SHANBA",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("4:04"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(child: Text("19:14")),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("3"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("26"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(
                                  child: Text(
                                    "YAKSHANBA",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("4:02"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(child: Text("19:15")),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("4"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("27"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(
                                  child: Text(
                                    "DUSHANBA",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("4:00"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(child: Text("19:16")),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("5"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("28"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(
                                  child: Text(
                                    "SESHANBA",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("3:58"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(child: Text("19:17")),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("6"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("29"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(
                                  child: Text(
                                    "CHORSHANBA",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("3:56"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(child: Text("19:18")),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("7"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("30"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(
                                  child: Text(
                                    "PAYSHANBA",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("3:55"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(child: Text("19:19")),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text(
                                  "8",
                                  style: TextStyle(color: Colors.teal),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text(
                                  "1",
                                  style: TextStyle(color: Colors.teal),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(
                                  child: Text(
                                    "JUMA",
                                    style: TextStyle(color: Colors.teal),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text(
                                  "3:53",
                                  style: TextStyle(color: Colors.teal),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(
                                    child: Text(
                                  "19:20",
                                  style: TextStyle(color: Colors.teal),
                                )),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("9"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("2"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(
                                  child: Text(
                                    "SHANBA",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("3:52"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(child: Text("19:21")),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("10"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("3"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(
                                  child: Text(
                                    "YAKSHANBA",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("3:50"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(child: Text("19:23")),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("11"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("4"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(
                                  child: Text(
                                    "DUSHANBA",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("3:48"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(child: Text("19:24")),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("12"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("5"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(
                                  child: Text(
                                    "SESHANBA",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("3:46"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(child: Text("19:25")),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("13"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("6"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(
                                  child: Text(
                                    "CHORSHANBA",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("3:45"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(child: Text("19:26")),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("14"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("7"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(
                                  child: Text(
                                    "PAYSHANBA",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("3:43"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(child: Text("19:27")),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text(
                                  "15",
                                  style: TextStyle(color: Colors.teal),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text(
                                  "8",
                                  style: TextStyle(color: Colors.teal),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(
                                  child: Text(
                                    "JUMA",
                                    style: TextStyle(color: Colors.teal),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text(
                                  "3:42",
                                  style: TextStyle(color: Colors.teal),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(
                                    child: Text(
                                  "19:28",
                                  style: TextStyle(color: Colors.teal),
                                )),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 30),
                child: Expanded(
                  child: Table(
                    border: TableBorder.all(color: Colors.black, width: 2),
                    columnWidths: {
                      0: FractionColumnWidth(0.05),
                      1: FractionColumnWidth(0.05),
                      2: FractionColumnWidth(0.11),
                      3: FractionColumnWidth(0.08),
                      4: FractionColumnWidth(0.08),
                    },
                    children: [
                      TableRow(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 16, 150, 136)),
                        children: [
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  FittedBox(
                                    child: Text(
                                      "RO'ZA",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  FittedBox(
                                    child: Text(
                                      "KUNLARI",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  FittedBox(
                                    child: Text(
                                      "APREL",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  FittedBox(
                                    child: Text(
                                      "MAY",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(
                                  child: Text(
                                    "HAFTA KUNLARI",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(
                                  child: Text(
                                    "SAHARLIK",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(
                                  child: Text(
                                    "IFTORLIK",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text(
                                  "16",
                                  style: TextStyle(),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("9"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(
                                  child: Text("SHANBA"),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("3:40"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(child: Text("19:29")),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("17"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("10"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(
                                  child: Text(
                                    "YAKSHANBA",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("3:39"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(child: Text("19:30")),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("18"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("11"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(
                                  child: Text(
                                    "DUSHANBA",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("3:37"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(child: Text("19:31")),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("19"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("12"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(
                                  child: Text(
                                    "SESHANBA",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("3:35"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(child: Text("19:32")),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("20"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("13"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(
                                  child: Text(
                                    "CHORSHANBA",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("3:34"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(child: Text("19:33")),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("21"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("14"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(
                                  child: Text(
                                    "PAYSHANBA",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("3:33"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(child: Text("19:34")),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text(
                                  "22",
                                  style: TextStyle(color: Colors.teal),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text(
                                  "15",
                                  style: TextStyle(color: Colors.teal),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(
                                  child: Text(
                                    "JUMA",
                                    style: TextStyle(color: Colors.teal),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text(
                                  "3:31",
                                  style: TextStyle(color: Colors.teal),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(
                                    child: Text(
                                  "19:35",
                                  style: TextStyle(color: Colors.teal),
                                )),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("23"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("16"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(
                                  child: Text(
                                    "SHANBA",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("3:30"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(child: Text("19:36")),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("24"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("17"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(
                                  child: Text(
                                    "YAKSHANBA",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("3:28"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(child: Text("19:37")),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("25"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("18"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(
                                  child: Text(
                                    "DUSHANBA",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("3:27"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(child: Text("19:38")),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("26"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("19"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(
                                  child: Text(
                                    "SESHANBA",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("3:26"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(child: Text("19:39")),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("27"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("20"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(
                                  child: Text(
                                    "CHORSHANBA",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("3:25"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(child: Text("19:40")),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("28"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("21"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(
                                  child: Text(
                                    "PAYSHANBA",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("3:23"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(child: Text("19:41")),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text(
                                  "29",
                                  style: TextStyle(color: Colors.teal),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text(
                                  "22",
                                  style: TextStyle(color: Colors.teal),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(
                                  child: Text(
                                    "JUMA",
                                    style: TextStyle(color: Colors.teal),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text(
                                  "3:22",
                                  style: TextStyle(color: Colors.teal),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(
                                    child: Text(
                                  "19:42",
                                  style: TextStyle(color: Colors.teal),
                                )),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("30"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("23"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(
                                  child: Text("SESHANBA"),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: Text("3:21"),
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: TableCell(
                              child: Center(
                                child: FittedBox(
                                    child: Text(
                                  "19:42",
                                  style: TextStyle(color: Colors.teal),
                                )),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
