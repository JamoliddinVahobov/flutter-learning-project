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
  fontWeight: FontWeight.w900,
  fontSize: 20,
);
final creepy = TextStyle(
  color: Colors.black,
  fontSize: 15,
  fontWeight: FontWeight.w900,
);

class Rockie extends StatefulWidget {
  const Rockie({super.key});

  @override
  State<Rockie> createState() => _RockieState();
}

class _RockieState extends State<Rockie> {
  bool showFirstPage = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: showFirstPage ? Thepage() : Thelistpage(),
      ),
    );
  }
}

class Thelistpage extends StatefulWidget {
  const Thelistpage({super.key});

  @override
  State<Thelistpage> createState() => _ThelistpageState();
}

class _ThelistpageState extends State<Thelistpage> {
  List scaredPottah = [
    Or(pic: "images/potter.jpg", name: 'Potter'),
    Or(pic: "images/sardorbek.jpg", name: 'Bob'),
    Or(pic: "images/ronald.jpg", name: 'Charlie'),
    Or(pic: "images/messi.jpg", name: 'David'),
    Or(pic: "images/odilbek.jpg", name: 'Eve'),
    Or(pic: "images/hasanboy.jpg", name: 'Frank'),
    Or(pic: "images/ice cube.jpg", name: 'Grace'),
    Or(pic: "images/em.jpg", name: 'Hank'),
    Or(pic: "images/ron.jpg", name: 'Ivy'),
    Or(pic: "images/50-cent.webp", name: 'Jack'),
    Or(pic: "images/coffee.jpg", name: 'Sirius'),
    Or(pic: "images/dow.jpg", name: 'Leo'),
  ];
  List people = [
    Nice(sign: Icons.tv, message: 'DTH'),
    Nice(sign: Icons.directions_subway, message: 'Metro'),
    Nice(sign: Icons.electrical_services, message: 'Electricity'),
    Nice(sign: Icons.movie, message: 'Movie Tickets'),
    Nice(sign: Icons.local_fire_department, message: 'Hot Deals'),
    Nice(sign: Icons.credit_card, message: 'Credit Card'),
    Nice(sign: Icons.call, message: 'Landline'),
    Nice(sign: Icons.directions_bus, message: 'Bus'),
    Nice(sign: Icons.shield, message: 'Insurance'),
    Nice(sign: Icons.train, message: 'Trains'),
    Nice(sign: Icons.local_grocery_store, message: 'Grocery'),
    Nice(sign: Icons.shopping_cart, message: 'Shop Now'),
    Nice(sign: Icons.flight, message: 'Flights'),
    Nice(sign: Icons.videogame_asset, message: 'Play and Win'),
    Nice(sign: Icons.wifi, message: 'Broadband'),
    Nice(sign: Icons.tv, message: 'Cable TV'),
    Nice(sign: Icons.attach_money, message: 'Mutual Funds'),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(
                    10,
                    10,
                    10,
                    10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.qr_code,
                        size: 30,
                        color: const Color.fromARGB(255, 71, 69, 69),
                      ),
                      CircleAvatar(
                        radius: 15,
                        backgroundImage: AssetImage("images/harry.jpg"),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      height: 659,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "images/1.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 450,
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(
                                    20,
                                  ),
                                )),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 15,
                                      top: 20,
                                      bottom: 10,
                                    ),
                                    child: Text("People",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17,
                                            decoration: TextDecoration.none,
                                            color: Colors.black)),
                                  ),
                                  LayoutBuilder(
                                    builder: (context, constraints) {
                                      final double itemWidth =
                                          constraints.maxWidth / 4;
                                      final double itemHeight = itemWidth * 1.1;

                                      return GridView.builder(
                                        shrinkWrap: true,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        gridDelegate:
                                            SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 4,
                                          crossAxisSpacing: 10,
                                          mainAxisSpacing: 10,
                                          childAspectRatio:
                                              itemWidth / itemHeight,
                                        ),
                                        itemCount: scaredPottah.length,
                                        itemBuilder: (context, index) {
                                          final milk = scaredPottah[index];
                                          return grow(milk);
                                        },
                                      );
                                    },
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      bottom: 10,
                                    ),
                                    child: Divider(
                                      thickness: 2,
                                      indent: 20,
                                      endIndent: 20,
                                      color: Color.fromARGB(255, 155, 151, 151),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 10,
                                      right: 20,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Business and title",
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w900,
                                              decoration: TextDecoration.none,
                                              color: Colors.black),
                                        ),
                                        Container(
                                          height: 35,
                                          width: 100,
                                          decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 118, 188, 245),
                                            borderRadius:
                                                BorderRadius.circular(30),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Icon(
                                                Icons.shopping_bag,
                                                color: Color.fromARGB(
                                                    255, 2, 33, 174),
                                              ),
                                              Text(
                                                "Delivery",
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w900,
                                                    decoration:
                                                        TextDecoration.none,
                                                    color: Color.fromARGB(
                                                        255, 4, 29, 191)),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 15,
                                            bottom: 5,
                                            left: 10,
                                            right: 10,
                                          ),
                                          child: SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                              children: people
                                                  .map((person) =>
                                                      design(person))
                                                  .toList(),
                                            ),
                                          ),
                                        ),
                                        TextButton(
                                          child: Container(
                                            height: 40,
                                            width: 160,
                                            decoration: BoxDecoration(
                                              color: Color.fromARGB(
                                                  255, 3, 47, 193),
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Icon(
                                                  Icons.add,
                                                  size: 30,
                                                  color: Colors.white,
                                                ),
                                                Text(
                                                  "Go back to first page",
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                        ),
                                      ],
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget design(person) {
  return Container(
    height: 35,
    width: 120,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      border: Border.all(
        width: 1,
        color: Colors.grey,
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          person.sign,
          size: 20,
        ),
        Text(person.message,
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w900,
                decoration: TextDecoration.none,
                color: Colors.black)),
      ],
    ),
  );
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

class Thepage extends StatefulWidget {
  const Thepage({super.key});

  @override
  State<Thepage> createState() => _ThepageState();
}

class _ThepageState extends State<Thepage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 6, 67, 236),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 8,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.cancel_outlined,
                  color: Colors.white,
                ),
                PopupMenuButton(
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                  onSelected: (value) {
                    // ignore: avoid_print
                    print('$value');
                  },
                  itemBuilder: (BuildContext context) {
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
                  },
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage("images/ph.jpg"),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage("images/em.jpg"),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Send money to this person',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Icon(
                Icons.key,
                color: Colors.white,
                size: 30,
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 50,
                width: 220,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 91, 89, 89),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter your key here",
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(25),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Thelistpage()));
                },
                child: Icon(
                  Icons.forward,
                ),
              ),
            ],
          ),
          Container(
            height: 230,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      '1',
                      style: st,
                    ),
                    Text(
                      '4',
                      style: st,
                    ),
                    Text(
                      '7',
                      style: st,
                    ),
                    Icon(
                      Icons.backspace_outlined,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      '2',
                      style: st,
                    ),
                    Text(
                      '5',
                      style: st,
                    ),
                    Text(
                      '8',
                      style: st,
                    ),
                    Text(
                      '0',
                      style: st,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 17, bottom: 69),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '3',
                        style: st,
                      ),
                      Text(
                        '6',
                        style: st,
                      ),
                      Text(
                        '9',
                        style: st,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Or {
  String? name;

  String? pic;
  Or({
    this.name,
    this.pic,
  });
}

class Nice {
  String? message;
  IconData? sign;
  Nice({
    this.message,
    this.sign,
  });
}
