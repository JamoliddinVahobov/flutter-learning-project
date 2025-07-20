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

final st = TextStyle(
  fontWeight: FontWeight.w700,
  fontSize: 18,
);
final creepy = TextStyle(
  color: Colors.black,
  fontSize: 15,
  fontWeight: FontWeight.w800,
);

class Rockie extends StatefulWidget {
  const Rockie({super.key});

  @override
  State<Rockie> createState() => _RockieState();
}

class _RockieState extends State<Rockie> {
  // List people = [
  //   Nice(sign: Icons.tv, message: 'DTH'),
  //   Nice(sign: Icons.directions_subway, message: 'Metro'),
  //   Nice(sign: Icons.electrical_services, message: 'Electricity'),
  //   Nice(sign: Icons.movie, message: 'Movie Tickets'),
  //   Nice(sign: Icons.local_fire_department, message: 'Hot Deals'),
  //   Nice(sign: Icons.credit_card, message: 'Credit Card'),
  //   Nice(sign: Icons.call, message: 'Landline'),
  //   Nice(sign: Icons.directions_bus, message: 'Bus'),
  //   Nice(sign: Icons.shield, message: 'Insurance'),
  //   Nice(sign: Icons.train, message: 'Trains'),
  //   Nice(sign: Icons.local_grocery_store, message: 'Grocery'),
  //   Nice(sign: Icons.shopping_cart, message: 'Shop Now'),
  //   Nice(sign: Icons.flight, message: 'Flights'),
  //   Nice(sign: Icons.videogame_asset, message: 'Play and Win'),
  //   Nice(sign: Icons.wifi, message: 'Broadband'),
  //   Nice(sign: Icons.tv, message: 'Cable TV'),
  //   Nice(sign: Icons.attach_money, message: 'Mutual Funds'),
  // ];
  List scaredPottah = [
    Or(
      image: "images/coffee.jpg",
      text1: "Business Management",
      text2: "Management",
      text3: "\$19.95",
    ),
    Or(
      image: "images/harry.jpg",
      text1: "IT & Cloud Computing",
      text2: "Computer",
      text3: "\$16.99",
    ),
    Or(
      image: "images/ron.jpg",
      text1: "Learn How To Play Guitar",
      text2: "Music",
      text3: "\$16.99",
    ),
    Or(
      image: "images/sardorbek.jpg",
      text1: "Basics of baking cakes",
      text2: "Cooking",
      text3: "\$16.99",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 244, 242, 242),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 5,
              bottom: 45,
            ),
            child: Icon(
              Icons.arrow_back,
              color: Colors.blue,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Favourites',
                  style: st,
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.search,
                    color: Colors.blue[900],
                  ),
                ),
              ],
            ),
          ),
          // ignore: sized_box_for_whitespace
          Container(
            height: 605,
            child: ListView(
              children: scaredPottah.map((person) => design(person)).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

Widget design(person) {
  return Padding(
    padding: const EdgeInsets.only(
      left: 15,
      right: 15,
      bottom: 15,
      top: 0,
    ),
    child: Container(
      height: 135,
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
            ),
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(person.image),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    person.text1,
                    style: creepy,
                  ),
                  Text(
                    person.text2,
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "20",
                        style: creepy,
                      ),
                      Text("Students"),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "51",
                        style: creepy,
                      ),
                      Text("Lectures"),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage("images/heart.jpg"),
              ),
              Container(
                height: 28,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    person.text3,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    ),
  );
}

class Or {
  String? image;
  String? text1;
  String? text2;
  String? text3;

  Or({
    this.image,
    this.text1,
    this.text2,
    this.text3,
  });
}

Widget grow(milk) {
  return SizedBox(
    height: 50,
    width: 50,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 2,
          child: CircleAvatar(
            backgroundImage: AssetImage(milk.pic),
          ),
        ),
        Expanded(
          child: Text(
            milk.name,
            style: TextStyle(
                fontSize: 15,
                decoration: TextDecoration.none,
                color: Colors.black),
          ),
        ),
      ],
    ),
  );
}

class Nice {
  String? message;
  IconData? sign;
  Nice({
    this.message,
    this.sign,
  });
}
