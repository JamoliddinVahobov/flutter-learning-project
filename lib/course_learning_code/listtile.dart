// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, unnecessary_import
// ignore: prefer_const_literals_to_create_immutables
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HourAM(),
    ),
  );
}

final creepy = TextStyle(
  color: Colors.white,
  fontSize: 16,
  fontWeight: FontWeight.w300,
);
final haha = TextStyle(
  color: Colors.black,
  fontSize: 16,
  fontWeight: FontWeight.w600,
);

class HourAM extends StatefulWidget {
  const HourAM({super.key});

  @override
  State<HourAM> createState() => _HourAMState();
}

class _HourAMState extends State<HourAM> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: ufine.length,
        itemBuilder: (context, index) {
          return design(
            ufine[index],
            context,
          );
        },
      ),
    );
  }
}

Widget design(Jo person, BuildContext context) {
  return ListTile(
    onTap: () {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Call ${person.name}"),
              actions: [
                TextButton(
                  child: Text('Call'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                TextButton(
                  child: Text('Cancel'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          });
    },
    leading: CircleAvatar(
      backgroundColor: Colors.blue[700],
      child: Text(
        person.letter!,
        style: creepy,
      ),
    ),
    title: Text(
      person.name!,
      style: haha,
    ),
    subtitle: Text(person.email!),
  );
}

List ufine = [
  Jo(
    letter: "P",
    name: "Pratap Kumar",
    email: "pratap@example.com",
  ),
  Jo(
    letter: "J",
    name: "Jagadeesh",
    email: "Jagadeesh@example.com",
  ),
  Jo(
    letter: "S",
    name: "Srinivas",
    email: "Srinivas@example.com",
  ),
  Jo(
    letter: "N",
    name: "Narendra",
    email: "Narendra@example.com",
  ),
  Jo(
    letter: "S",
    name: "Sravan",
    email: "Sravan@example.com",
  ),
  Jo(
    letter: "R",
    name: "Ranganadh",
    email: "Ranganadh@example.com",
  ),
  Jo(
    letter: "K",
    name: "Karthik",
    email: "Karthik@example.com",
  ),
  Jo(
    letter: "S",
    name: "Saranya",
    email: "Saranya@example.com",
  ),
  Jo(
    letter: "M",
    name: "Mahesh",
    email: "Mahesh@example.com",
  ),
];

class Jo {
  String? letter;
  String? name;
  String? email;
  Jo({
    this.letter,
    this.name,
    this.email,
  });
}
