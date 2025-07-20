// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, unnecessary_import
// ignore: prefer_const_literals_to_create_immutables
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
      appBar: AppBar(
        // iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.green,
        title: Text(
          'ExpansionTile',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ExpansionTile(
            title: Text('Settings'),
            children: [
              ListTile(
                trailing: Icon(Icons.stacked_bar_chart),
                title: Text('Data management'),
              ),
              ListTile(
                leading: Icon(Icons.stacked_bar_chart),
                title: Text('Data management'),
              ),
              ListTile(
                trailing: Icon(Icons.stacked_bar_chart),
                title: Text('Data management'),
              ),
              ListTile(
                leading: Icon(Icons.stacked_bar_chart),
                title: Text('Data management'),
              ),
              ExpansionTile(
                title: Text('Cooooool'),
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    height: 200,
                    child: Image.asset(
                      "images/image1.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
