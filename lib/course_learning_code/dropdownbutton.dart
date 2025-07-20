// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, unnecessary_import
// ignore: prefer_const_literals_to_create_immutables
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dropdownthingy(),
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

class Dropdownthingy extends StatefulWidget {
  const Dropdownthingy({super.key});

  @override
  State<Dropdownthingy> createState() => _DropdownthingyState();
}

class _DropdownthingyState extends State<Dropdownthingy> {
  String options = "Options";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 200, // Set a fixed width
          child: DropdownButton<String>(
            value: options,
            items: [
              DropdownMenuItem<String>(
                value: "Options",
                child: ListTile(
                  title: Text('Options'),
                ),
              ),
              DropdownMenuItem<String>(
                value: "Yooo",
                child: ListTile(
                  leading: Icon(
                    Icons.edit,
                    color: Colors.purple,
                  ),
                  title: Text('Edit'),
                ),
              ),
              DropdownMenuItem<String>(
                value: "HeheBoy",
                child: ListTile(
                  leading: Icon(
                    Icons.copy,
                    color: Colors.purple,
                  ),
                  title: Text('Duplicate'),
                ),
              ),
              DropdownMenuItem<String>(
                value: "HeyGirl",
                child: ListTile(
                  leading: Icon(
                    Icons.archive_outlined,
                    color: Colors.purple,
                  ),
                  title: Text('Archive'),
                ),
              ),
              DropdownMenuItem<String>(
                value: "Come on",
                child: ListTile(
                  leading: Icon(
                    Icons.move_up,
                    color: Colors.purple,
                  ),
                  title: Text('Move'),
                ),
              ),
              DropdownMenuItem<String>(
                value: "LOOL",
                child: ListTile(
                  leading: Icon(
                    Icons.delete,
                    color: Colors.purple,
                  ),
                  title: Text('Delete'),
                ),
              ),
            ],
            onChanged: (String? newValue) {
              setState(() {
                options = newValue!;
              });
            },
            isExpanded: true,
            underline: Container(),
          ),
        ),
      ),
    );
  }
}
