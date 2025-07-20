// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kingofcomfort/course_learning_code/explore_page.dart';
// import 'package:getwidget/getwidget.dart';
import 'package:kingofcomfort/course_learning_code/snackbar.dart';
// import 'package:liquid_swipe/liquid_swipe.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Keys(),
      routes: {
        '/explore': (context) => Explore(),
        '/atit': (context) => At(),
      },
    ),
  );
}

class Keys extends StatefulWidget {
  const Keys({super.key});

  @override
  State<Keys> createState() => _KeysState();
}

class _KeysState extends State<Keys> {
  final liquid = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            iconTheme: IconThemeData(
              color: Colors.white,
              size: 30,
            ),
            leading: Tooltip(
                message: 'fullscreen', child: Icon(CupertinoIcons.fullscreen)),
            actions: [
              Tooltip(
                  message: 'folders',
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(CupertinoIcons.folder),
                  )),
              Tooltip(
                message: 'settings',
                child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Icon(CupertinoIcons.settings),
                ),
              ),
            ],
            backgroundColor: Colors.orange,
            expandedHeight: 300,
            floating: true,
            pinned: false,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Sliver Appbar',
                style: TextStyle(color: Colors.white),
              ),
              background: Image.asset(
                "images/image1.jpg",
                fit: BoxFit.cover,
              ),
              centerTitle: true,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.green,
                    child: Center(
                      child: Icon(
                        Icons.call,
                        size: 50,
                      ),
                    ),
                  ),
                );
              },
              childCount: 25,
            ),
          ),
        ],
      ),
    );
  }
}
