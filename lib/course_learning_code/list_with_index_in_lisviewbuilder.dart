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

class Rockie extends StatefulWidget {
  const Rockie({super.key});

  @override
  State<Rockie> createState() => _RockieState();
}

class _RockieState extends State<Rockie> {
  List sofine = [
    "images/1.jpg",
    "images/2.jpg",
    "images/3.webp",
    "images/4.jpg",
    "images/5.webp",
    "images/6.jpg",
    "images/7.webp",
    "images/image13.jpg",
    "images/image14.jpg",
    "images/image15.jpg",
    "images/image21.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 244, 242, 242),
        body: Center(
          child: Container(
            height: double.maxFinite,
            width: double.maxFinite,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [
                  Colors.yellow,
                  Colors.red,
                  Colors.white,
                  Colors.blue,
                  Colors.lightGreen,
                  Colors.orange,
                ])),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ListView.builder(
                  itemCount: sofine.length,
                  itemBuilder: (context, index) {
                    final stuff = sofine[index];
                    return InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text("This Image"),
                                content: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.3,
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: AssetImage(stuff),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text('OK')),
                                ],
                              );
                            });
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 15),
                        child: Container(
                          height: 200,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage(stuff), fit: BoxFit.cover),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ),
        ));
  }
}
