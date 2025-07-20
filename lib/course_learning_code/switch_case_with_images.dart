// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShoppingCart(),
    ),
  );
}

class ShoppingCart extends StatefulWidget {
  const ShoppingCart({super.key});

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  String changedImage = "images/image13.jpg";

  void changingImage(String img) {
    setState(() {
      switch (img) {
        case '1':
          changedImage = "images/image13.jpg";
          break;
        case '2':
          changedImage = "images/image14.jpg";
          break;
        case '3':
          changedImage = "images/image16.jpg";
          break;
        case '4':
          changedImage = "images/image15.jpg";
          break;
        case '5':
          changedImage = "images/image21.jpg";
          break;
        default:
          CircularProgressIndicator();
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "O'zgaruvchan container",
          style: TextStyle(color: Colors.white, fontSize: 17),
        ),
        toolbarHeight: 40,
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildImageButton('1', "images/image13.jpg"),
                  SizedBox(height: 20),
                  buildImageButton('2', "images/image14.jpg"),
                  SizedBox(height: 20),
                  buildImageButton('3', "images/image16.jpg"),
                  SizedBox(height: 20),
                  buildImageButton('4', "images/image15.jpg"),
                  SizedBox(height: 20),
                  buildImageButton('5', "images/image21.jpg"),
                ],
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              flex: 3,
              child: Container(
                height: screenHeight * 0.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(changedImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildImageButton(String id, String imagePath) {
    return InkWell(
      onTap: () {
        changingImage(id);
      },
      child: Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
