// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:kingofcomfort/course_learning_code/imtihon_third_month.dart';
import 'package:getwidget/getwidget.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BotNavBar(),
      routes: {
        '/check': (context) => Exam(),
      },
    ),
  );
}

class BotNavBar extends StatefulWidget {
  const BotNavBar({super.key});

  @override
  State<BotNavBar> createState() => _BotNavBarState();
}

class _BotNavBarState extends State<BotNavBar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    FoodDaddy(),
    MondayA(),
    Setname(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(
              Icons.trolley,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.black.withOpacity(0.6),
        onTap: _onItemTapped,
      ),
    );
  }
}

class Setname extends StatefulWidget {
  const Setname({super.key});

  @override
  State<Setname> createState() => _SetnameState();
}

class _SetnameState extends State<Setname> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  height: 300,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/vf.jpg"),
                          fit: BoxFit.cover)),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  height: 300,
                  width: double.maxFinite,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 30,
            left: 35,
            child: Container(
              height: 430,
              width: 320,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 117, 110, 110),
                      offset: Offset(2, 5),
                      blurRadius: 6,
                    ),
                  ]),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 50,
                  bottom: 50,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Set Your Name',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Set Your Email',
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.5), fontSize: 17),
                    ),
                    TextField(),
                    Padding(
                      padding: const EdgeInsets.only(right: 160, top: 15),
                      child: Text(
                        'Mobile Number',
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.5), fontSize: 17),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 50,
                      ),
                      child: Text(
                        "Set Your Mobile Number",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: TextField(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 225,
                      ),
                      child: Text(
                        "Adress",
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.5), fontSize: 17),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 75,
                      ),
                      child: Text(
                        "Set Your Email Adress",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    TextField(),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 215,
            left: 150,
            child: CircleAvatar(
              backgroundImage: AssetImage("images/hehe.png"),
              radius: 50,
            ),
          ),
          Positioned(
            top: 350,
            right: 40,
            child: IconButton(
              icon: Icon(
                Icons.edit_note_outlined,
                color: Colors.orange,
                size: 30,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}

class FoodDaddy extends StatefulWidget {
  const FoodDaddy({super.key});

  @override
  State<FoodDaddy> createState() => _FoodDaddyState();
}

class _FoodDaddyState extends State<FoodDaddy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 5, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 20,
                  width: 20,
                  color: Colors.orange,
                  child: Icon(
                    Icons.kebab_dining,
                    size: 15,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'FoodDaddy',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Icon(
                  Icons.trolley,
                  color: Colors.orange,
                  size: 25,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: meals.map((haha) => d(haha)).toList(),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 10,
                ),
                child: Icon(
                  Icons.sell,
                  color: Colors.orange,
                ),
              ),
              Text(
                "Today's Deals",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 170,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage("images/blf.webp"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text(
                      'Blackforest _',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 18,
                        ),
                        Icon(
                          Icons.star_outline,
                          color: Colors.orange,
                          size: 18,
                        ),
                        Icon(
                          Icons.star_outline,
                          color: Colors.orange,
                          size: 18,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text("(3.0)"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$44.0",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 60,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2),
                            ),
                            padding: EdgeInsets.all(0),
                            minimumSize: Size(1, 1),
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.black,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 170,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage("images/fru.webp"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text(
                      'Fruity summer _',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 18,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text("(5.0)"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$10.0",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 60,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2),
                            ),
                            padding: EdgeInsets.all(0),
                            minimumSize: Size(1, 1),
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.black,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 10,
                ),
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.orange,
                  child: Icon(
                    Icons.star,
                    size: 15,
                    color: Colors.white,
                  ),
                ),
              ),
              Text(
                "Popular Items",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 170,
                  width: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage("images/hillc.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  height: 170,
                  width: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage("images/chockice.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

List meals = [
  Foods(
    image: "images/bur.jpg",
    name: "Burger",
    text: "55 Kinds",
  ),
  Foods(
    image: "images/dnpiz.jpg",
    name: "Pizza",
    text: "23 Kinds",
  ),
  Foods(
    image: "images/lav.jpg",
    name: "Lavash",
    text: "33 Kinds",
  ),
  Foods(
    image: "images/hd.jpg",
    name: "Hot Dog",
    text: "47 Kinds",
  ),
  Foods(
    image: "images/kabab.jpg",
    name: "Kabob",
    text: "17 Kinds",
  ),
  Foods(
    image: "images/cake.jpg",
    name: "Tort",
    text: "85 Kinds",
  ),
];

Widget d(haha) {
  return Padding(
    padding: const EdgeInsets.only(
      left: 7,
      right: 7,
      top: 7,
      bottom: 7,
    ),
    child: Container(
      height: 55,
      width: 110,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(width: 0.1, color: Colors.black),
          boxShadow: [
            BoxShadow(
              offset: Offset(2, 2),
              color: Color.fromARGB(255, 72, 69, 69),
              blurRadius: 3,
            )
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                8,
              ),
              image: DecorationImage(
                image: AssetImage(
                  haha.image,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                haha.name,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Text(
                haha.text,
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
            ],
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
  Foods({
    this.image,
    this.name,
    this.text,
  });
}

class MondayA extends StatefulWidget {
  const MondayA({super.key});

  @override
  State<MondayA> createState() => _MondayAState();
}

class _MondayAState extends State<MondayA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Monday,August 24",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "(4)",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: foodies.map((badguy) => fly(badguy)).toList(),
          ),
          Divider(
            thickness: 1,
            color: Colors.black.withOpacity(0.3),
            indent: 15,
            endIndent: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 25,
              right: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total:",
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "59.0",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 50,
              right: 50,
            ),
            child: GFButton(
              onPressed: () {
                Navigator.pushNamed(context, '/check');
              },
              shape: GFButtonShape.pills,
              size: 52,
              color: Colors.orange,
              child: Center(
                child: Text(
                  'CheckOut',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

Widget fly(badguy) {
  return Padding(
    padding: const EdgeInsets.only(left: 15, right: 15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Container(
            height: 90,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(
                  badguy.img,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              badguy.foody,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("-"),
                SizedBox(width: 20),
                Text(
                  "1",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
                SizedBox(width: 20),
                Text("+"),
              ],
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("\$ 10.0"),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 17,
              width: 17,
              color: Colors.orange,
              child: Icon(
                Icons.close,
                size: 11,
              ),
            )
          ],
        ),
      ],
    ),
  );
}

List foodies = [
  Bubble(
    img: "images/Salmon.webp",
    foody: "Salmon Burgers",
    cost: "\$ 10.0",
  ),
  Bubble(
    img: "images/Banh.jpg",
    foody: "Banh Mi Pizza",
    cost: "\$ 11.0",
  ),
  Bubble(
    img: "images/chick.jpg",
    foody: "Alfaham chicken",
    cost: "\$ 9.0",
  ),
  Bubble(
    img: "images/caramel.jpg",
    foody: "Caramel sauce",
    cost: "\$ 30.0",
  ),
];

class Bubble {
  String? img;
  String? foody;
  String? cost;
  Bubble({
    this.img,
    this.foody,
    this.cost,
  });
}
