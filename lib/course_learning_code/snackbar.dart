// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kingofcomfort/course_learning_code/explore_page.dart';
import 'package:getwidget/getwidget.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Start(),
      routes: {
        '/explore': (context) => Explore(),
        '/atit': (context) => At(),
      },
    ),
  );
}

class Start extends StatefulWidget {
  const Start({super.key});

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  void launchURL(String url) async {
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/ice cube.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(
                    color: Colors.white, // Default color for text
                    fontSize: 20,
                    height: 1.4),
                children: [
                  TextSpan(text: "Let's start journey, "),
                  TextSpan(
                    text: "enjoy",
                    style: TextStyle(
                      color: Colors.amber, // Different color for "enjoy"
                      fontWeight: FontWeight.bold, // Additional styling
                    ),
                  ),
                  TextSpan(text: "\nBeautiful Movement of Life"),
                ],
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.center,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(
                    color: Colors.white, // Default color for text
                    fontSize: 20,
                  ),
                  children: [
                    TextSpan(
                      text: "Click here to visit ",
                    ),
                    TextSpan(
                      text: "Flutter",
                      style: TextStyle(
                        color: Colors.blue, // Color for the link text
                        decoration: TextDecoration
                            .underline, // Underline to indicate a link
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // Handle the tap event
                          launchURL("https://flutter.dev");
                        },
                    ),
                    TextSpan(text: " for more information."),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 40,
                right: 40,
              ),
              child: GFButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'Continue to the next page',
                      ),
                      backgroundColor: Colors.green,
                      duration: Duration(seconds: 5),
                      action: SnackBarAction(
                        label: 'OK',
                        onPressed: () {
                          Navigator.pushNamed(context, '/explore');
                        },
                      ),
                    ),
                  );
                },
                size: 60,
                fullWidthButton: true,
                text: "Start",
                textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
                color: Colors.white,
                shape: GFButtonShape.pills,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Don't have account",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}

class At extends StatefulWidget {
  const At({super.key});

  @override
  State<At> createState() => _AtState();
}

class _AtState extends State<At> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      height: double.maxFinite,
      width: double.maxFinite,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 440,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                image: DecorationImage(
                  image: AssetImage("images/1.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: SizedBox(
                            height: 45,
                            width: 45,
                            child: FloatingActionButton(
                              heroTag: 'backbutton',
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                              child: Center(child: Icon(Icons.arrow_back)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 32, right: 20),
                          child: SizedBox(
                            height: 45,
                            width: 45,
                            child: FloatingActionButton(
                              heroTag: 'searchbutton',
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              onPressed: () {},
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                              child: Icon(Icons.search),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'The Montcalm At',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          'Brewery London City',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.white,
                              size: 25,
                            ),
                            Text(
                              'London',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.7),
                                  fontSize: 15),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                ),
                                Icon(
                                  Icons.star_outline,
                                  color: Colors.orange,
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.bookmark_outline,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                top: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "In the heart of London City district, Montcalm Brewery, 5-star hotel offers luxury rooms with plush amenities. The Barbican Train and Underground Station is less than a 10-minute walk away.",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.alarm_outlined,
                        size: 30,
                        color: Colors.blue[700],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "8Am - 9Pm",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.calendar_month,
                        size: 30,
                        color: Colors.blue[700],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Friday - Tuesday",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.airplanemode_active,
                        size: 30,
                        color: Colors.blue[700],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Ticket 2 way",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                          bottom: 20,
                        ),
                        child: Container(
                          height: 75,
                          width: 135,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                              color: Colors.blue.shade700,
                              width: 2,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "\$9,50.00",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w900,
                                color: Colors.blue[700],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                          bottom: 20,
                        ),
                        child: Container(
                          height: 75,
                          width: 190,
                          decoration: BoxDecoration(
                            color: Colors.blue[700],
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Book",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.send_outlined,
                                color: Colors.white,
                                size: 30,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
