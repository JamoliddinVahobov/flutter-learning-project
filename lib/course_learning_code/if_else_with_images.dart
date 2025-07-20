// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShoppingCart(),
    ),
  );
}

class ShoppingCart extends StatefulWidget {
  const ShoppingCart({super.key});

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  String changedImage = "images/image20.jpg";
  void changingImage(String img) {
    setState(() {
      if (img == '1') {
        changedImage = "images/image13.jpg";
      } else if (img == '2') {
        changedImage = "images/image14.jpg";
      } else if (img == '3') {
        changedImage = "images/image16.jpg";
      } else if (img == '4') {
        changedImage = "images/image15.jpg";
      } else if (img == '5') {
        changedImage = "images/image21.jpg";
      } else {
        ("Could not load image");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "O'zgaruvchan container",
          style: TextStyle(color: Colors.white, fontSize: 17),
        ),
        toolbarHeight: 40,
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: Center(
              child: Expanded(
                flex: 1,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.8,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          changingImage('1');
                        },
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage("images/image13.jpg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          changingImage('2');
                        },
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage("images/image14.jpg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          changingImage('3');
                        },
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage("images/image16.jpg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          changingImage('4');
                        },
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage("images/image15.jpg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          changingImage('5');
                        },
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage("images/image21.jpg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              height: double.infinity,
              child: Image.asset(
                changedImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
