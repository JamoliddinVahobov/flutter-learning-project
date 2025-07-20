// ignore_for_file: avoid_print, prefer_const_constructors, unused_import, file_names, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.blue,
        //   title: Text(
        //     'Icons card',
        //     style: TextStyle(color: Colors.white),
        //   ),
        //   centerTitle: true,
        // ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "9:41",
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                  SizedBox(width: 320),
                  Icon(Icons.signal_cellular_4_bar),
                  Icon(Icons.wifi),
                  Icon(Icons.battery_4_bar_rounded),
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 10),
                  child: Icon(Icons.arrow_back_ios),
                ),
                SizedBox(width: 230),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Icon(Icons.favorite_border_outlined),
                ),
              ],
            ),
            Container(
              height: 250,
              width: 250,
              color: Colors.white,
              child: Image(
                image: AssetImage("images/pizza.png"),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Pizza",
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30),
                ),
                SizedBox(width: 145),
                SizedBox(
                  height: 40,
                  width: 130,
                  child: Card(
                    color: Colors.red,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "-",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "2",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "+",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 220,
                    width: 350,
                    color: Colors.white,
                    child: Text(
                        "Pizza is a popular dish consisting typically of a flattened disk of bread dough topped with various ingredients, including tomato sauce, cheese, meats, vegetables, and herbs. It is then baked in an oven, resulting in a delicious and savory meal enjoyed worldwide.Origins: Pizza's origins can be traced back to ancient civilizations such as the Greeks, Egyptians, and Romans, who all had some form of flatbread topped with ingredients."),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: Container(
                      height: 80,
                      width: 400,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Total Price",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                              Text(
                                "\$48.00",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 45,
                            width: 140,
                            child: Card(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(60)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "ADD TO BAG",
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
