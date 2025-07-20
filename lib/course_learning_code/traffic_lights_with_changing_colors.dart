import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CountDown(),
  ));
}

class CountDown extends StatefulWidget {
  const CountDown({super.key});

  @override
  State<CountDown> createState() => _CountDownState();
}

class _CountDownState extends State<CountDown> {
  List<Color> colors = [Colors.white, Colors.white, Colors.white];
  List<int> countdownValues = [11, 6, 11];
  int activeCircle = 0;
  bool isCountingdown = false;
  void startCountingdown() async {
    if (isCountingdown) return;
    setState(() {
      isCountingdown = true;
      colors[activeCircle] = Colors.red;
    });

    while (true) {
      for (int count = countdownValues[activeCircle] - 1; count >= 0; count--) {
        setState(() {
          countdownValues[activeCircle] = count + 1;
        });
        await Future.delayed(const Duration(seconds: 1));
      }

      setState(() {
        if (activeCircle == 0) {
          countdownValues[activeCircle] = 11;
          colors[activeCircle] = Colors.white;
          activeCircle = 1;
          colors[activeCircle] = Colors.yellow;
        } else if (activeCircle == 1) {
          countdownValues[activeCircle] = 6;
          colors[activeCircle] = Colors.white;
          activeCircle = 2;
          colors[activeCircle] = Colors.green;
        } else if (activeCircle == 2) {
          countdownValues[activeCircle] = 11;
          colors[activeCircle] = Colors.white;
          activeCircle = 0;
          colors[activeCircle] = Colors.red;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 450,
              width: 170,
              color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 70,
                    backgroundColor: colors[0],
                    child: countdownValues[0] != 11
                        ? Text(
                            countdownValues[0].toString(),
                            style: const TextStyle(
                                fontSize: 30, color: Colors.black),
                          )
                        : null,
                  ),
                  CircleAvatar(
                    radius: 70,
                    backgroundColor: colors[1],
                    child: countdownValues[1] != 6
                        ? Text(
                            countdownValues[1].toString(),
                            style: const TextStyle(
                                fontSize: 30, color: Colors.black),
                          )
                        : null,
                  ),
                  CircleAvatar(
                    radius: 70,
                    backgroundColor: colors[2],
                    child: countdownValues[2] != 11
                        ? Text(
                            countdownValues[2].toString(),
                            style: const TextStyle(
                                fontSize: 30, color: Colors.black),
                          )
                        : null,
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                startCountingdown();
              },
              child: Container(
                height: 50,
                width: 170,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Center(
                  child: Text(
                    'Start Traffic Lights',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
