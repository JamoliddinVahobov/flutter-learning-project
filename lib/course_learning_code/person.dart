// ignore_for_file: avoid_print, prefer_const_constructors, unused_import, file_names, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          // iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.blue,
          title: Text(
            'imtihon',
            style: TextStyle(color: Colors.black, fontSize: 40),
          ),
          centerTitle: true,
          actions: [Icon(Icons.home, size: 40)],
        ),
        // backgroundColor: Colors.blue[300],
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("images/coffee.jpg"),
                radius: 60,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Odam',
                    style: TextStyle(fontSize: 25),
                  ),
                  Text(
                    'Odamov',
                    style: TextStyle(fontSize: 25),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
                width: 1000,
                child: Divider(
                  color: Colors.black,
                  thickness: 2,
                ),
              ),
              SizedBox(
                height: 130,
                width: 1100,
                child: Card(
                  color: Colors.orange,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Hosted",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "87",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Flowess",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "885",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Flowle",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "123",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 1020, top: 10),
                child: Text(
                  "Rsesnt",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                height: 100,
                width: 1100,
                color: Colors.white,
                child: Image(
                  image: AssetImage("images/coffee.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 10,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 10,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 10,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 10,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 1030),
                child: Text(
                  "Flutter",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("images/coffee.jpg"),
                    radius: 60,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("images/coffee.jpg"),
                    radius: 60,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("images/coffee.jpg"),
                    radius: 60,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ),
  );
}
