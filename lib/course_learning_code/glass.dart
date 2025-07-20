// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, unnecessary_import
// ignore: prefer_const_literals_to_create_immutables
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:glass/glass.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TheExpansionTile(),
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

class TheExpansionTile extends StatefulWidget {
  const TheExpansionTile({super.key});

  @override
  State<TheExpansionTile> createState() => _TheExpansionTileState();
}

class _TheExpansionTileState extends State<TheExpansionTile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      // appBar: AppBar(
      //   toolbarHeight: 50,
      //   title: Text(
      //     'Glass morphism widget',
      //     style: TextStyle(color: Colors.white),
      //   ),
      //   centerTitle: true,
      //   backgroundColor: Color.fromARGB(155, 35, 10, 186).withOpacity(0.5),
      // ),
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/ball.webp"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          height: 210,
          width: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.purple, width: 3),
            color: Colors.purple.withOpacity(0.3),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 43),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.credit_card,
                      color: Colors.white,
                      size: 55,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "6423 6402 0001 6493 010",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      "02/12",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 25, top: 17),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "VISA",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.italic,
                        fontSize: 18,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: Text(
                        "O'ZB",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ).asGlass(
          clipBorderRadius: BorderRadius.circular(20),
          tintColor: Colors.transparent,
          blurX: 10,
          blurY: 10,
        ),
      ),
    );
  }
}
