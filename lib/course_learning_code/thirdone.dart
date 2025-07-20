// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class ThirdOne extends StatefulWidget {
  const ThirdOne({super.key});

  @override
  State<ThirdOne> createState() => _ThirdOneState();
}

class _ThirdOneState extends State<ThirdOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Search Page',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      backgroundColor: const Color.fromARGB(255, 244, 242, 242),
      body: Center(
        child: SizedBox(
          height: 40,
          width: 300,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Icon(
                  Icons.search,
                  size: 30,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Flexible(child: TextField()),
            ],
          ),
        ),
      ),
    );
  }
}
