// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, unnecessary_import
// ignore: prefer_const_literals_to_create_immutables
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Gridviewcustomyeah(),
    ),
  );
}

class Gridviewcustomyeah extends StatefulWidget {
  const Gridviewcustomyeah({super.key});

  @override
  State<Gridviewcustomyeah> createState() => _GridviewcustomyeahState();
}

class _GridviewcustomyeahState extends State<Gridviewcustomyeah> {
  List<String> what = [
    "images/image17.jpg",
    "images/image13.jpg",
    "images/image4.jpg",
    "images/image9.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.custom(
          gridDelegate: SliverWovenGridDelegate.count(pattern: [
            WovenGridTile(2),
            WovenGridTile(
              6 / 5,
              crossAxisRatio: 0.9,
              alignment: AlignmentDirectional.centerEnd,
            ),
          ], crossAxisCount: 2),
          childrenDelegate: SliverChildBuilderDelegate(
            (context, index) => img(what[index]),
            childCount: what.length,
          ),
        ),
      ),
    );
  }

  Widget img(String imageUrl) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(
            imageUrl,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
