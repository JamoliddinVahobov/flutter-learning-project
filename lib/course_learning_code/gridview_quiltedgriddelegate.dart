// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, unnecessary_import, avoid_print
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
  List what = [
    "images/image17.jpg",
    "images/image13.jpg",
    "images/image4.jpg",
    "images/image9.jpg",
    "images/image17.jpg",
    "images/image13.jpg",
    "images/image4.jpg",
    "images/image9.jpg",
    "images/image4.jpg",
    "images/image9.jpg",
    "images/image17.jpg",
    "images/image13.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    print('Number of items in the list: ${what.length}');
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.custom(
          gridDelegate: SliverQuiltedGridDelegate(
            crossAxisCount: 4,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            repeatPattern: QuiltedGridRepeatPattern.inverted,
            pattern: [
              QuiltedGridTile(2, 2),
              QuiltedGridTile(1, 1),
              QuiltedGridTile(1, 1),
              QuiltedGridTile(1, 2),
            ],
          ),
          childrenDelegate: SliverChildBuilderDelegate(
            (context, index) {
              print("Index: $index");
              return img(
                what[index],
                () {
                  switch (index) {
                    case 0:
                      print("Image 1 tapped");
                      break;
                    case 1:
                      print("Image 2 tapped");
                      break;
                    case 2:
                      print("Image 3 tapped");
                      break;
                    case 3:
                      print("Image 4 tapped");
                      break;
                    case 4:
                      print('Image 5 tapped');
                      break;
                    case 5:
                      print('Image 6 tapped');
                      break;
                    case 6:
                      print('Image 7 tapped');
                      break;
                    case 7:
                      print('Image 8 tapped');
                      break;
                  }
                },
              );
            },
            childCount: what.length,
          ),
        ),
      ),
    );
  }

  Widget img(String imageUrl, Function onTap) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(
              imageUrl,
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
