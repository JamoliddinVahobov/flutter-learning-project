// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Conversation(),
  ));
}

class Conversation extends StatefulWidget {
  const Conversation({super.key});

  @override
  State<Conversation> createState() => _ConversationState();
}

class _ConversationState extends State<Conversation> {
  final List<String> messages = [
    "Hey, I missed you today.",
    "I missed you too! How was your day?",
    "Busy, but thinking about you made it better.",
    "Aw, that’s sweet. I can't wait to see you tonight.",
    "Same here. I've got a little surprise for you.",
    "Oh, now I'm excited! What is it?",
    "You’ll find out soon enough. Just know I’ve been looking forward to our time together all day.",
    "You’re making me smile. See you soon!",
    "Can’t wait. Love you.",
    "Love you too."
  ];
  List<Widget> messageWidgets = [];
  @override
  void initState() {
    super.initState();
    emitMessages();
  }

  Future<void> emitMessages() async {
    for (int a = 0; a < messages.length; a++) {
      await Future.delayed(Duration(seconds: 2));
      setState(() {
        messageWidgets.add(
          Align(
            alignment:
                a % 2 == 0 ? Alignment.centerRight : Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                color: a % 2 == 0 ? Colors.blue : Colors.green,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  messages[a],
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: FittedBox(
          child: Text(
            'Conversation between two lovebirds LOL',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: messageWidgets,
      )),
    );
  }
}
