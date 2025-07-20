// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, unnecessary_import
// ignore: prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:getwidget/getwidget.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SoliqApp(),
    ),
  );
}

class SoliqApp extends StatefulWidget {
  const SoliqApp({super.key});

  @override
  State<SoliqApp> createState() => _SoliqAppState();
}

class _SoliqAppState extends State<SoliqApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.search),
          ),
        ],
        title: Text(
          'Browse Categories',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
        ),
        // iconTheme: IconThemeData(color: Colors.white),
        // toolbarHeight: 40,
        // backgroundColor: Colors.red,
        // centerTitle: true,
      ),
      backgroundColor: Color.fromARGB(255, 207, 200, 200),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'All Categories',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900),
            ),
            SizedBox(height: 8),
            Expanded(
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4, mainAxisSpacing: 3, crossAxisSpacing: 2),
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.data_thresholding,
                          color: Colors.blue,
                          size: 30,
                        ),
                        SizedBox(height: 5),
                        Text('DTH'),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.emoji_transportation,
                          color: Colors.blue,
                          size: 30,
                        ),
                        SizedBox(height: 5),
                        Text('Metro'),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.thunderstorm,
                          color: Colors.blue,
                          size: 30,
                        ),
                        SizedBox(height: 5),
                        Text('Electricity'),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.video_call,
                          color: Colors.blue,
                          size: 30,
                        ),
                        SizedBox(height: 5),
                        Text('Movie Tickets'),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.fire_extinguisher,
                          color: Colors.blue,
                          size: 30,
                        ),
                        SizedBox(height: 5),
                        Text('Hot Deals'),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.credit_card,
                          color: Colors.blue,
                          size: 30,
                        ),
                        SizedBox(height: 5),
                        Text('Credit Card'),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.phone_iphone,
                          color: Colors.blue,
                          size: 30,
                        ),
                        SizedBox(height: 5),
                        Text('Mobile Prepaid'),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.landslide_outlined,
                          color: Colors.blue,
                          size: 30,
                        ),
                        SizedBox(height: 5),
                        Text('Landline'),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.bus_alert_outlined,
                          color: Colors.blue,
                          size: 30,
                        ),
                        SizedBox(height: 5),
                        Text('Bus'),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.umbrella_outlined,
                          color: Colors.blue,
                          size: 30,
                        ),
                        SizedBox(height: 5),
                        Text('Insurance'),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.phone_android_outlined,
                          color: Colors.blue,
                          size: 30,
                        ),
                        SizedBox(height: 5),
                        Column(
                          children: [
                            Text('Mobile'),
                            Text('Postpaid'),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.train_outlined,
                          color: Colors.blue,
                          size: 30,
                        ),
                        SizedBox(height: 5),
                        Text('Trains'),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.local_grocery_store_outlined,
                          color: Colors.red,
                          size: 30,
                        ),
                        SizedBox(height: 5),
                        Text('Grocery'),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.flatware,
                          color: Colors.blue,
                          size: 30,
                        ),
                        SizedBox(height: 5),
                        Text('Shop Now'),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.money,
                          color: Colors.blue,
                          size: 30,
                        ),
                        SizedBox(height: 5),
                        Text('100% Cashback'),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.flight,
                          color: Colors.blue,
                          size: 30,
                        ),
                        SizedBox(height: 5),
                        Text('Flights'),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.gamepad,
                          color: Colors.blue,
                          size: 30,
                        ),
                        SizedBox(height: 5),
                        Text('Play and Win'),
                      ],
                    ),
                  ),
                  GFIconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/main');
                    },
                    icon: Icon(Icons.home),
                  ),
                  GFButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/list');
                    },
                    text: "Previous",
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  GFButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/kitob');
                    },
                    text: "Next Page",
                    icon: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
