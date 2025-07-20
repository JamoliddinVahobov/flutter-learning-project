// ignore_for_file: avoid_print, prefer_const_constructors, unused_import, file_names, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Hello(),
    ),
  );
}

class Hello extends StatefulWidget {
  const Hello({super.key});

  @override
  State<Hello> createState() => _HelloState();
}

class _HelloState extends State<Hello> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 700,
          width: 340,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 143, 6, 234),
            borderRadius: BorderRadius.circular(30),
            border: Border.all(width: 0, color: Colors.black),
          ),
          child: Stack(children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 10),
                  child: Row(
                    children: [
                      Text(
                        "9:41",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 210),
                      Icon(
                        Icons.signal_cellular_4_bar,
                        color: Colors.white,
                        size: 18,
                      ),
                      SizedBox(width: 3),
                      Icon(
                        Icons.wifi,
                        color: Colors.white,
                        size: 18,
                      ),
                      SizedBox(width: 3),
                      Icon(
                        Icons.battery_full,
                        color: Colors.white,
                        size: 18,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15, bottom: 5),
                          child: Text(
                            "Hello Rayana",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.waving_hand,
                          color: Colors.yellow,
                          size: 16,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            "Explore the Beauty of Nature!",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 220, 215, 215),
                              fontSize: 11,
                            ),
                          ),
                        ),
                      ],
                    ),
                    // SizedBox(
                    //   height: 15,
                    // ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15, left: 15, right: 5),
                          child: Icon(
                            Icons.cloudy_snowing,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Text(
                            "15 °C",
                            style: TextStyle(
                                color: const Color.fromARGB(255, 225, 222, 222),
                                fontSize: 13),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 210, 48, 239),
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(
                          width: 2,
                          color: Color.fromARGB(255, 225, 149, 255),
                        ),
                      ),
                      child: Icon(
                        Icons.map,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 210, 48, 239),
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(
                          width: 2,
                          color: Color.fromARGB(255, 225, 149, 255),
                        ),
                      ),
                      child: Icon(
                        Icons.restaurant,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 210, 48, 239),
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(
                          width: 2,
                          color: Color.fromARGB(255, 225, 149, 255),
                        ),
                      ),
                      child: Icon(
                        Icons.flight,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 210, 48, 239),
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(
                          width: 2,
                          color: Color.fromARGB(255, 225, 149, 255),
                        ),
                      ),
                      child: Icon(
                        Icons.apartment,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 7, right: 10, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          "Itinerary",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          "Restaurant",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Flight",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 22),
                        child: Text(
                          "Hotel",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 450,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 246, 246, 246),
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, bottom: 5, top: 15),
                        child: Row(
                          children: [
                            Text(
                              "Upcoming",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Recent",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 68, 65, 65)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 240,
                        ),
                        child: Container(
                          height: 3,
                          width: 40,
                          color: Colors.blue[800],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 150,
                              width: 130,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(7),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(3, 3),
                                    blurRadius: 5,
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Container(
                                      height: 100,
                                      width: 112,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(5),
                                        image: DecorationImage(
                                            image:
                                                AssetImage("images/canada.jpg"),
                                            fit: BoxFit.cover),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey,
                                            offset: Offset(0, 4),
                                            blurRadius: 5,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 68, top: 3),
                                    child: Text(
                                      "Canada",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 13),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 57, bottom: 3),
                                    child: Text(
                                      "13 March 2023",
                                      style: TextStyle(fontSize: 8),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 150,
                              width: 130,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(7),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(3, 3),
                                    blurRadius: 5,
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Container(
                                      height: 100,
                                      width: 112,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(5),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "images/australia.jpg"),
                                            fit: BoxFit.cover),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey,
                                            offset: Offset(0, 4),
                                            blurRadius: 5,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 57, top: 3),
                                    child: Text(
                                      "Australia",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 13),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 57, bottom: 3),
                                    child: Text(
                                      "08 April 2023",
                                      style: TextStyle(fontSize: 8),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10, right: 130, bottom: 10),
                        child: Text(
                          'Your Travel Buddies',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundImage: AssetImage("images/em.jpg"),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text('Eminem'),
                            ],
                          ),
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundImage:
                                    AssetImage("images/50-cent.webp"),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text('50-cent'),
                            ],
                          ),
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundImage: AssetImage("images/ron.jpg"),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text('Ron'),
                            ],
                          ),
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundImage: AssetImage("images/harry.jpg"),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text('Harry'),
                            ],
                          ),
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundColor:
                                    Color.fromARGB(255, 8, 70, 239),
                                child: Icon(
                                  Icons.add,
                                  size: 20,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text('Add'),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 90,
                        width: 350,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.home,
                                        color: Color.fromARGB(255, 4, 57, 215),
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        'Home',
                                        style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 6, 37, 213),
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                  Icon(Icons.window_outlined),
                                  Icon(Icons.access_time),
                                  Icon(Icons.notifications_outlined),
                                  Icon(Icons.account_circle_outlined),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 5,
                                width: 120,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(10)),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 65,
              right: 15,
              child: Icon(
                Icons.search,
                color: Colors.white,
                size: 30,
              ),
            ),
            Positioned(
              top: 434,
              left: 125,
              child: Container(
                height: 17,
                width: 17,
                color: const Color.fromARGB(255, 92, 235, 220),
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                ),
              ),
            ),
            Positioned(
              top: 434,
              left: 272,
              child: Container(
                height: 17,
                width: 17,
                color: const Color.fromARGB(255, 92, 235, 220),
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                ),
              ),
            ),
            Positioned(
              bottom: 5,
              right: 10,
              child: GFButton(
                color: Colors.red,
                onPressed: () {
                  Navigator.pushNamed(context, '/gradient');
                },
                text: "Previous",
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.blueAccent,
                ),
                type: GFButtonType.outline2x,
              ),
            )
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        onPressed: () {
          Navigator.pushNamed(context, '/main');
        },
        child: Icon(
          Icons.home,
        ),
      ),
    );
  }
}
