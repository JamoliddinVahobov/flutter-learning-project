// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, unnecessary_import
// ignore: prefer_const_literals_to_create_immutables
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
              title: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Padding(
                  padding: const EdgeInsets.only(right: 292),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Card Base Features",
                        style: TextStyle(
                            color: Colors.white,
                            // fontStyle: FontStyle.italic,
                            // letterSpacing: 8,
                            fontWeight: FontWeight.w600,
                            fontSize: 15),
                      ),
                      Text(
                        "StaggeredGrid",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                            fontSize: 10),
                      ),
                    ],
                  ),
                ),
              ),
              toolbarHeight: 90,
              backgroundColor: Colors.orange,
              centerTitle: true,
              actions: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, right: 530),
                  child: Icon(
                    Icons.sports_baseball_rounded,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
              ]),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Card(
                          color: Colors.white,
                          elevation: 5,
                          shadowColor: Colors.grey,
                          child: SizedBox(
                            height: 250,
                            width: 150,
                            child: Column(
                              children: [
                                Expanded(
                                    flex: 10,
                                    // ignore: sized_box_for_whitespace
                                    child: Container(
                                        width: 150,
                                        child: Image(
                                          image:
                                              AssetImage("images/image12.jpg"),
                                          fit: BoxFit.cover,
                                        ))),
                                Expanded(
                                  flex: 3,
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 50),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'HILL',
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 15),
                                        ),
                                        Text(
                                          'More details...',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Card(
                          color: Colors.white,
                          elevation: 5,
                          shadowColor: Colors.grey,
                          child: SizedBox(
                            height: 250,
                            width: 150,
                            child: Column(
                              children: [
                                Expanded(
                                    flex: 10,
                                    // ignore: sized_box_for_whitespace
                                    child: Container(
                                        width: 150,
                                        child: Image(
                                          image:
                                              AssetImage("images/image15.jpg"),
                                          fit: BoxFit.cover,
                                        ))),
                                Expanded(
                                  flex: 3,
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 25),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'MOUNTAIN 1',
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 15),
                                        ),
                                        Text(
                                          'More details...',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Card(
                          color: Colors.white,
                          elevation: 5,
                          shadowColor: Colors.grey,
                          child: SizedBox(
                            height: 250,
                            width: 150,
                            child: Column(
                              children: [
                                Expanded(
                                    flex: 10,
                                    // ignore: sized_box_for_whitespace
                                    child: Container(
                                        width: 150,
                                        child: Image(
                                          image:
                                              AssetImage("images/image12.jpg"),
                                          fit: BoxFit.cover,
                                        ))),
                                Expanded(
                                  flex: 3,
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 50),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'HILL',
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 15),
                                        ),
                                        Text(
                                          'More details...',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Card(
                          elevation: 5,
                          shadowColor: Colors.grey,
                          color: Colors.white,
                          child: SizedBox(
                            height: 170,
                            width: 150,
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 8,
                                  child: Image(
                                    image: AssetImage("images/image13.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Expanded(
                                    flex: 4,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 50),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "SNOW",
                                            style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 15,
                                            ),
                                          ),
                                          Text(
                                            "More details...",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10,
                                            ),
                                          )
                                        ],
                                      ),
                                    ))
                              ],
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Card(
                              elevation: 5,
                              shadowColor: Colors.grey,
                              color: Colors.white,
                              child: SizedBox(
                                height: 170,
                                width: 150,
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 8,
                                      child: Image(
                                        image: AssetImage("images/image16.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Expanded(
                                        flex: 4,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(right: 20),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "WATERFALLS",
                                                style: TextStyle(
                                                  color: Colors.green,
                                                  fontSize: 15,
                                                ),
                                              ),
                                              Text(
                                                "More details...",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 10,
                                                ),
                                              )
                                            ],
                                          ),
                                        ))
                                  ],
                                ),
                              ),
                            ),
                            Card(
                              elevation: 5,
                              shadowColor: Colors.grey,
                              color: Colors.white,
                              child: SizedBox(
                                height: 170,
                                width: 150,
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 8,
                                      child: Image(
                                        image: AssetImage("images/image18.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Expanded(
                                        flex: 4,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(right: 40),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "SWANS",
                                                style: TextStyle(
                                                  color: Colors.green,
                                                  fontSize: 15,
                                                ),
                                              ),
                                              Text(
                                                "More details...",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 10,
                                                ),
                                              )
                                            ],
                                          ),
                                        ))
                                  ],
                                ),
                              ),
                            ),
                            Card(
                              elevation: 5,
                              shadowColor: Colors.grey,
                              color: Colors.white,
                              child: SizedBox(
                                height: 170,
                                width: 150,
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 8,
                                      child: Image(
                                        image: AssetImage("images/image13.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Expanded(
                                        flex: 4,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(right: 50),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "SNOW",
                                                style: TextStyle(
                                                  color: Colors.green,
                                                  fontSize: 15,
                                                ),
                                              ),
                                              Text(
                                                "More details...",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 10,
                                                ),
                                              )
                                            ],
                                          ),
                                        ))
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Card(
                          elevation: 5,
                          shadowColor: Colors.grey,
                          color: Colors.white,
                          child: SizedBox(
                            height: 170,
                            width: 150,
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 8,
                                  child: Image(
                                    image: AssetImage("images/image14.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Expanded(
                                    flex: 4,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 50),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "SEA",
                                            style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 15,
                                            ),
                                          ),
                                          Text(
                                            "More details...",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10,
                                            ),
                                          )
                                        ],
                                      ),
                                    ))
                              ],
                            ),
                          ),
                        ),
                        Card(
                          color: Colors.white,
                          elevation: 5,
                          shadowColor: Colors.grey,
                          child: SizedBox(
                            height: 250,
                            width: 150,
                            child: Column(
                              children: [
                                Expanded(
                                    flex: 10,
                                    // ignore: sized_box_for_whitespace
                                    child: Container(
                                        width: 150,
                                        child: Image(
                                          image:
                                              AssetImage("images/image17.jpg"),
                                          fit: BoxFit.cover,
                                        ))),
                                Expanded(
                                  flex: 3,
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 35),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'MOUNTAIN',
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 15),
                                        ),
                                        Text(
                                          'More details...',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Card(
                          elevation: 5,
                          shadowColor: Colors.grey,
                          color: Colors.white,
                          child: SizedBox(
                            height: 170,
                            width: 150,
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 8,
                                  child: Image(
                                    image: AssetImage("images/image22.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Expanded(
                                    flex: 4,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 40),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "ROSE",
                                            style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 15,
                                            ),
                                          ),
                                          Text(
                                            "More details...",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10,
                                            ),
                                          )
                                        ],
                                      ),
                                    ))
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        )),
  );
}


// Container(
//             height: double.infinity,
//             width: double.infinity,
//             decoration: BoxDecoration(
//                 image: DecorationImage(
//                     image: AssetImage("images/image13.jpg"),
//                     fit: BoxFit.cover)),