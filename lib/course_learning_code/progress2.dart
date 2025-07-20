// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, unnecessary_import
// ignore: prefer_const_literals_to_create_immutables

// import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:flutter/widgets.dart';
// import 'package:weather_icons/weather_icons.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   textTheme: TextTheme(
      //     bodyMedium: TextStyle(color: Colors.white),
      //   ),
      //   iconTheme: IconThemeData(color: Colors.white),
      // ),
      home: Rockie(),
    ),
  );
}

final creepy = TextStyle(
  color: Colors.black,
  fontSize: 20,
  fontWeight: FontWeight.w900,
);

class Rockie extends StatefulWidget {
  const Rockie({super.key});

  @override
  State<Rockie> createState() => _RockieState();
}

class _RockieState extends State<Rockie> {
  // List scaredPottah = [
  //   Or(
  //     pic: "images/image19.jpg",
  //     buddy: "Paris",
  //   ),
  //   Or(
  //     pic: "images/chicago.jpg",
  //     buddy: "Chicago",
  //   ),
  //   Or(
  //     pic: "images/rome.jpg",
  //     buddy: "Italy",
  //   ),
  //   Or(
  //     pic: "images/tokyo.jpg",
  //     buddy: "Tokyo",
  //   ),
  //   Or(
  //     pic: "images/london.webp",
  //     buddy: "London",
  //   ),
  //   Or(
  //     pic: "images/roma.jpg",
  //     buddy: "Rome",
  //   ),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'In progress',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(
                right: 10,
              ),
              child: Container(
                height: 30,
                width: 30,
                color: Color.fromARGB(255, 202, 200, 200),
                child: Center(
                    child: Text(
                  '2',
                  style: creepy,
                )),
              ),
            ),
          ],
        ),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: people.map((person) => design(person)).toList(),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 30,
                    bottom: 10,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      bottom: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 193, 192, 192),
                            radius: 15,
                            child: Icon(
                              Icons.add,
                              size: 25,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text(
                          "Add a card",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                )
              ]),
        ));
  }
}

class Nice {
  String? button;
  String? message;
  String? date;
  String? image;
  Nice({
    this.button,
    this.image,
    this.message,
    this.date,
  });
}

Widget design(person) {
  return SingleChildScrollView(
    child: Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 15,
            left: 15,
            right: 15,
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                15,
              ),
              border: Border.all(
                width: 3,
                color: Color.fromARGB(255, 116, 165, 195),
              ),
            ),
            height: 210,
            child: Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      bottom: 10,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 122, 169, 123),
                          radius: 17,
                          child: Icon(
                            Icons.check,
                            size: 22,
                          ),
                        ),
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage(
                            person.image,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 22,
                      left: 5,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          person.message,
                          style: creepy,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          person.date,
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 30,
                          width: 90,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(
                              4,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              person.button,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

List people = [
  Nice(
      message: "Product page banner",
      date: "List: External Advertising Campaigns",
      image: "images/ronald.jpg",
      button: "Advertising"),
  Nice(
      message: "Design for new eBook",
      date: "List: Social Media Content Creation",
      image: "images/potter.jpg",
      button: "Media"),
  Nice(
      message: "Homepage Hero Image",
      date: "List: Email Marketing Initiatives",
      image: "images/messi.jpg",
      button: "Marketing"),
  Nice(
      message: "Social Media Ad Design",
      date: "List: Corporate Branding Projects",
      image: "images/odilbek.jpg",
      button: 'Branding'),
  Nice(
      message: "Newsletter Template",
      date: "List: Customer Engagement Strategies",
      image: "images/sardorbek.jpg",
      button: 'Engagements'),
  Nice(
      message: "Blog Post Graphics",
      date: "List: Partner Collaboration Requests",
      image: "images/ron.jpg",
      button: 'Projects'),
  Nice(
      message: "Event Flyer",
      date: "List: Product Launch Preparations",
      image: "images/ice cube.jpg",
      button: 'Launches'),
  Nice(
      message: "Infographic Design",
      date: "List: Seasonal Promotion Planning",
      image: "images/hasanboy.jpg",
      button: 'Promotions'),
  Nice(
      message: "Email Signature Banner",
      date: "List: Market Research Analysis",
      image: "images/em.jpg",
      button: 'Researches'),
  Nice(
      message: "List: Webinar Presentation Slides",
      date: "Cross-Departmental Design Needs",
      image: "images/50-cent.webp",
      button: 'Departments'),
];
