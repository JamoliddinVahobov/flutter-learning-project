// ignore_for_file: avoid_print, prefer_const_constructors, unused_import, file_names, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:kingofcomfort/course_learning_code/second.dart';
import 'package:kingofcomfort/course_learning_code/third.dart';
import 'package:clay_containers/clay_containers.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   textTheme: TextTheme(
      //     bodyMedium: TextStyle(color: Colors.blue),
      //   ),
      // ),
      home: ComeOnMAn(),
    ),
  );
}

class ComeOnMAn extends StatefulWidget {
  const ComeOnMAn({super.key});

  @override
  State<ComeOnMAn> createState() => _ComeOnMAnState();
}

class _ComeOnMAnState extends State<ComeOnMAn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.green[800],
      //   title: Text(
      //     'Decoration',
      //     style: TextStyle(color: Colors.white),
      //   ),
      //   centerTitle: true,
      // ),
      backgroundColor: Colors.pink[100],
      body: Padding(
        padding: EdgeInsets.only(left: 70, top: 15),
        child: Container(
          height: 700,
          width: 350,
          decoration: BoxDecoration(
            color: Colors.teal[300],
            border: Border.all(width: 6, color: Colors.black),
            borderRadius: BorderRadius.circular(40),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  height: 500,
                  width: 340,
                  decoration: BoxDecoration(
                    color: Colors.teal[300],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35)),
                    image: DecorationImage(
                        image: AssetImage("images/eggs.jpg"),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              Positioned(
                child: Stack(
                  children: [
                    Positioned(
                      top: 7,
                      left: 15,
                      child: Text(
                        '9:41',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Positioned(
                      left: 60,
                      child: Container(
                        height: 25,
                        width: 195,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(16),
                            bottomRight: Radius.circular(16),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 7,
                      left: 260,
                      child: Icon(
                        Icons.signal_cellular_4_bar,
                        size: 18,
                      ),
                    ),
                    Positioned(
                      top: 7,
                      left: 280,
                      child: Icon(
                        Icons.wifi,
                        size: 18,
                      ),
                    ),
                    Positioned(
                      top: 7,
                      left: 300,
                      child: Icon(
                        Icons.battery_4_bar_rounded,
                        size: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                  height: 300,
                  width: 340,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(70),
                      bottomLeft: Radius.circular(35),
                      bottomRight: Radius.circular(35),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 230,
                right: 140,
                child: Text(
                  "Let's cook",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Positioned(
                bottom: 120,
                right: 40,
                child: SizedBox(
                  height: 100,
                  width: 250,
                  child: Text(
                    "Cooking eggs is a versatile culinary skill with many methods. Common techniques include frying, boiling, scrambling, poaching, and baking. Each method offers different textures and flavors. Eggs are nutritious and a great source of protein.",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                  ),
                ),
              ),
              Positioned(
                bottom: 95,
                left: 40,
                child: GFIconButton(
                  color: Colors.black,
                  onPressed: () {
                    Navigator.pushNamed(context, '/main');
                  },
                  icon: Icon(Icons.home),
                ),
              ),
              Positioned(
                bottom: 90,
                left: 100,
                child: GFButton(
                  color: Colors.brown,
                  onPressed: () {
                    Navigator.pushNamed(context, '/kitob');
                  },
                  text: "Previous",
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                bottom: 90,
                left: 215,
                child: GFButton(
                  color: Colors.deepOrange,
                  onPressed: () {
                    Navigator.pushNamed(context, '/border');
                  },
                  text: "Next Page",
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Colors.green,
                  ),
                  type: GFButtonType.outline,
                ),
              ),
              Positioned(
                bottom: 270,
                right: 150,
                child: Card(
                  color: Colors.green,
                  child: SizedBox(
                    height: 3,
                    width: 40,
                  ),
                ),
              ),
              Positioned(
                bottom: 30,
                right: 19,
                child: ClayContainer(
                  height: 50,
                  width: 300,
                  borderRadius: 10,
                  color: Color.fromARGB(255, 7, 146, 11),
                  spread: 0,
                  parentColor: const Color.fromARGB(255, 2, 46, 4),
                  curveType: CurveType.convex,
                  child: Center(
                    child: Text(
                      'Get the recipe here',
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 97,
                child: SizedBox(
                    height: 13,
                    width: 150,
                    child: Card(
                      color: Colors.black,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}





//  Positioned(
//             child: Stack(
//               children: [
//                 Positioned(
//                   top: 7,
//                   left: 15,
//                   child: Text(
//                     '9:41',
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                 ),
//                 Positioned(
//                   left: 60,
//                   child: Container(
//                     height: 25,
//                     width: 195,
//                     decoration: BoxDecoration(
//                       color: Colors.black,
//                       borderRadius: BorderRadius.only(
//                         bottomLeft: Radius.circular(16),
//                         bottomRight: Radius.circular(16),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   top: 7,
//                   left: 260,
//                   child: Icon(
//                     Icons.signal_cellular_4_bar,
//                     size: 18,
//                   ),
//                 ),
//                 Positioned(
//                   top: 7,
//                   left: 280,
//                   child: Icon(
//                     Icons.wifi,
//                     size: 18,
//                   ),
//                 ),
//                 Positioned(
//                   top: 7,
//                   left: 300,
//                   child: Icon(
//                     Icons.battery_4_bar_rounded,
//                     size: 18,
//                   ),
//                 ),
//               ],
//             ),
//           ),