// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:kingofcomfort/course_learning_code/ab.dart';
import 'package:kingofcomfort/course_learning_code/listtile.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        iconTheme: IconThemeData(color: Colors.white),
      ),
      debugShowCheckedModeBanner: false,
      home: Tabbing(),
      // routes: {
      //   'some': (context) => HourAM(),
      //   'any': (context) => Prettier(),
      // },
    ),
  );
}

final creepy = TextStyle(
  color: Colors.white,
  fontSize: 18,
  fontWeight: FontWeight.w600,
);
final haha = TextStyle(
  color: Colors.black,
  fontSize: 16,
);

class Tabbing extends StatefulWidget {
  const Tabbing({super.key});

  @override
  State<Tabbing> createState() => _TabbingState();
}

class _TabbingState extends State<Tabbing> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 5,
          shadowColor: Colors.black,
          toolbarHeight: 50,
          backgroundColor: Colors.blue[700],
          title: Text("Tabs Demo", style: creepy),
          bottom: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white.withOpacity(0.7),
            indicatorColor: Colors.white,
            indicatorWeight: 3,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(
                text: "One",
              ),
              Tab(
                icon: Icon(Icons.call_missed),
                text: "Missed",
              ),
              Tab(
                icon: Icon(Icons.call_received),
                text: "Received",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text(
                "One",
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
            ),
            HourAM(),
            Prettier(),
          ],
        ),
      ),
    );
  }
}
