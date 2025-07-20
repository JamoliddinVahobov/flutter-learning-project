// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        iconTheme: IconThemeData(color: Colors.white),
      ),
      debugShowCheckedModeBanner: false,
      home: Exam(),
      routes: {},
    ),
  );
}

final creepy = TextStyle(
  color: Colors.black,
  fontSize: 20,
  fontWeight: FontWeight.w900,
);
final haha = TextStyle(
  color: Colors.white,
  fontSize: 18,
);

class Exam extends StatefulWidget {
  const Exam({super.key});

  @override
  State<Exam> createState() => _ExamState();
}

class _ExamState extends State<Exam> {
  List meals = [
    Foods(
      image: "images/chb.webp",
      name: "Cheeseburger",
      text:
          "A classic 100% beef patty, and cheese; with onions., pickles, mustard and a dollop of tomato ketchup, in a soft bun.",
      price: "\$3.5",
      rating: "Rating: 4.5",
    ),
    Foods(
      image: "images/lav.jpg",
      name: "Oddiy Lavash",
      text:
          "Lavash is a thin flatbread usually leavened, traditionally baked in a tandoor (tonir or tanoor) or on a sajj.",
      price: "\$4.5",
      rating: "Rating: 4.0",
    ),
    Foods(
      image: "images/bur.jpg",
      name: "Burger",
      text:
          "a dish consisting of a flat round cake of minced beef, or sometimes another savoury ingredient, that is fried or grilled.",
      price: "\$3.0",
      rating: "Rating: 3.0",
    ),
    Foods(
      image: "images/dnpiz.jpg",
      name: "Donar Pizza",
      text:
          "It is a dish of Italian origin, consisting of a flat round base of dough baked with a topping of tomatoes and cheese.",
      price: "\$8.0",
      rating: "Rating: 2.5",
    ),
    Foods(
      image: "images/hd.jpg",
      name: "Hot Dog",
      text:
          "Hot dogs were originally made with animal intestines, but times have changed: The main ingredient used nowadays is primarily.",
      price: "\$2.0",
      rating: "Rating: 4.5",
    ),
    Foods(
      image: "images/pwithm.jpg",
      name: "Qo'ziqorin Pizza",
      text:
          "There are several options, some better than others. But the most common mushrooms used on pizza are buttons.",
      price: "\$7.0",
      rating: "Rating: 4.0",
    ),
    Foods(
      image: "images/kabab.jpg",
      name: "Kabob",
      text:
          "They are commonly made of beef, though lamb is also occasionally used, and are almost always served with the local pita bread.",
      price: "\$2.0",
      rating: "Rating: 6.0",
    ),
    Foods(
      image: "images/qov.jpg",
      name: "Shovurma",
      text:
          "Shawarma is prepared from thin cuts of seasoned and marinated lamb, mutton, veal, beef, chicken, or turkey.",
      price: "\$4.0",
      rating: "Rating: 4.0",
    ),
    Foods(
      image: "images/san.webp",
      name: "Sandwich",
      text:
          "Sandwich is an item of food consisting of two pieces of bread with a filling between them.",
      price: "\$1.5",
      rating: "Rating: 3.5",
    ),
    Foods(
      image: "images/cake.jpg",
      name: "Dessert Uchun Tort",
      text:
          "an item of soft sweet food made from a mixture of flour, fat, eggs, sugar, and other ingredients.",
      price: "\$10.0",
      rating: "Rating: 5.5",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        toolbarHeight: 260,
        backgroundColor: Colors.red,
        flexibleSpace: FlexibleSpaceBar(
          background: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 25,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Icon(
                          Icons.person,
                          size: 28,
                        ),
                      ),
                      Text(
                        "Delivered for Bato",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 7),
                        child: Icon(
                          Icons.arrow_drop_down,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Icon(
                      Icons.notification_add,
                      size: 28,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                ),
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      15,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.search,
                              color: Colors.black,
                              size: 30,
                            ),
                            Text(
                              "Search....",
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.qr_code_2,
                          color: Colors.red,
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.fastfood,
                          size: 35,
                        ),
                        Text(
                          "Burger",
                          style: haha,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.local_pizza,
                          size: 35,
                        ),
                        Text(
                          "Pizza",
                          style: haha,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.free_breakfast,
                          size: 35,
                        ),
                        Text(
                          "Breakfast",
                          style: haha,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.cake_sharp,
                          size: 35,
                        ),
                        Text(
                          "Cake",
                          style: haha,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: ListView(
        children: meals.map((haha) => d(haha)).toList(),
      ),
    );
  }
}

Widget d(haha) {
  return Padding(
    padding: const EdgeInsets.only(
      left: 10,
      right: 10,
      top: 15,
      bottom: 15,
    ),
    child: Container(
      height: 170,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(
          20,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 170,
            width: 155,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                20,
              ),
              image: DecorationImage(
                image: AssetImage(
                  haha.image,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    top: 5,
                  ),
                  child: Text(
                    haha.name,
                    style: creepy,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 5,
                  ),
                  child: Text(
                    haha.text,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 15,
                    top: 5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        haha.price,
                        style: creepy,
                      ),
                      Text(
                        haha.rating,
                        style: creepy,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

class Foods {
  String? image;
  String? name;
  String? text;
  String? price;
  String? rating;
  Foods({
    this.image,
    this.name,
    this.price,
    this.rating,
    this.text,
  });
}
