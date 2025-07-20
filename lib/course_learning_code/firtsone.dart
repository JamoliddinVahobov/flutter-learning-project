// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:getwidget/getwidget.dart';

class FirstOne extends StatefulWidget {
  const FirstOne({super.key});

  @override
  State<FirstOne> createState() => _FirstOneState();
}

class _FirstOneState extends State<FirstOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          'Your picture',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      // backgroundColor: Color.fromARGB(255, 244, 242, 242),
      body: Center(
        child: Container(
          height: 300,
          width: 400,
          color: Colors.white,
          child: Image(image: AssetImage("images/messi.jpg")),
        ),
      ),
    );
  }
}
// GFButton(
//           size: 50,
//           onPressed: () {
//             showDialog(
//                 context: context,
//                 builder: (BuildContext context) {
//                   return AlertDialog(
//                     title: Text('Call the umber below'),
//                     content: Text("+998 90 570 89 23"),
//                     actions: [
//                       TextButton(
//                         child: Text('Call'),
//                         onPressed: () {
//                           Navigator.of(context).pop();
//                         },
//                       ),
//                       TextButton(
//                         onPressed: () {
//                           Navigator.pop(context);
//                         },
//                         child: Text("Cancel"),
//                       ),
//                     ],
//                   );
//                 });
//           },
//           text: "Contact us",
//         ),