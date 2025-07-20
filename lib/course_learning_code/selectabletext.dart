// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, unnecessary_import, avoid_print
// ignore: prefer_const_literals_to_create_immutables
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Lottieyeah(),
    ),
  );
}

class Lottieyeah extends StatefulWidget {
  const Lottieyeah({super.key});

  @override
  State<Lottieyeah> createState() => _LottieyeahState();
}

class _LottieyeahState extends State<Lottieyeah> with TickerProviderStateMixin {
  late final AnimationController name =
      AnimationController(duration: Duration(seconds: 2), vsync: this)
        ..repeat(reverse: true);
  late final Animation<double> bigD =
      CurvedAnimation(parent: name, curve: Curves.slowMiddle);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            // FadeTransition(
            //   opacity: bigD,
            //   child: CircleAvatar(
            //     radius: 100,
            //     backgroundImage: AssetImage('images/image17.jpg'),
            //   ),
            // ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SelectableText(
                "Hello My Friends Hello My FriendsHello My FriendsHello My FriendsHello My FriendsHello My FriendsHello My FriendsHello My FriendsHello My FriendsHello My FriendsHello My Friends",
                style: TextStyle(
                  fontFamily: ("lol"),
                  fontSize: 20,
                ),
              ),
            ),
            Lottie.asset("images/lol.json"),
          ],
        ),
      ),
    );
  }
}
