import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Rockie(),
    ),
  );
}

class Rockie extends StatefulWidget {
  const Rockie({super.key});

  @override
  State<Rockie> createState() => _RockieState();
}

class _RockieState extends State<Rockie> {
  List people = [
    Nice(
        name: "Leonel Messi",
        message: "Hello my friend!",
        time: "18:28",
        image: "images/messi.jpg"),
    Nice(
      name: "Cristiano Ronaldo",
      message: "How are you,my dear?",
      time: "21:26",
      image: "images/ronald.jpg",
    ),
    Nice(
        name: "Odil Ahmedov",
        message: "O'zizi ishlariz qalay?",
        time: "15:15",
        image: "images/odilbek.jpg"),
    Nice(
        name: "Hasanboy Do'stmatov",
        message: "Keling bir choyxona qilamiz",
        time: "18:06",
        image: "images/hasanboy.jpg"),
    Nice(
      name: "Sardor Soyibjonov",
      message: "Assalomu aleykum aka qettasiz?",
      time: "10:34",
      image: "images/sardorbek.jpg",
    ),
    Nice(
      name: "Azizxon",
      message: "Aka ofisga kelasizmi?",
      time: "18:13",
      image: "images/potter.jpg",
    ),
  ];
  List scaredPottah = [
    Or(
      pic: "images/search.png",
    ),
    Or(
      pic: "images/ronald.jpg",
    ),
    Or(
      pic: "images/messi.jpg",
    ),
    Or(
      pic: "images/sardorbek.jpg",
    ),
    Or(
      pic: "images/potter.jpg",
    ),
    Or(
      pic: "images/hasanboy.jpg",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 118, 3, 138),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(
              top: 15,
              left: 25,
            ),
            child: Text(
              "Chat with",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 25,
              bottom: 10,
            ),
            child: Text(
              "your friends",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: scaredPottah.map((milk) => grow(milk)).toList(),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 12,
            ),
            child: Container(
              height: 400,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: people.map((person) => design(person)).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Nice {
  String? name;
  String? message;
  String? time;
  String? image;
  Nice({
    this.name,
    this.image,
    this.message,
    this.time,
  });
}

class Or {
  String? buddy;
  String? pic;
  Or({
    this.buddy,
    this.pic,
  });
}

Widget design(person) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 25,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      30,
                    ),
                    image: DecorationImage(
                        image: AssetImage(person.image), fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      person.name,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w900),
                    ),
                    Text(
                      person.message,
                      style: const TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Text(
              person.time,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      )
    ],
  );
}

Widget grow(milk) {
  return Row(
    children: [
      Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            30,
          ),
          image:
              DecorationImage(image: AssetImage(milk.pic), fit: BoxFit.cover),
        ),
      ),
    ],
  );
}
