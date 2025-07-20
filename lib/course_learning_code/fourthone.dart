// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, unnecessary_import
// ignore: prefer_const_literals_to_create_immutables
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:getwidget/getwidget.dart';

class FourthOne extends StatefulWidget {
  const FourthOne({super.key});

  @override
  State<FourthOne> createState() => _FourthOneState();
}

class _FourthOneState extends State<FourthOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          'More flowers here',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Wrap(
          alignment: WrapAlignment.center,
          children: [
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/flower1.jpg"), fit: BoxFit.cover),
              ),
            ),
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/flower2.jpg"), fit: BoxFit.cover),
              ),
            ),
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/flower3.png"), fit: BoxFit.cover),
              ),
            ),
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/flower4.jpg"), fit: BoxFit.cover),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
