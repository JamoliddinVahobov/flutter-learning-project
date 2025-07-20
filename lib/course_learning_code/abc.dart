// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, unnecessary_import
// ignore: prefer_const_literals_to_create_immutables

// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
// import 'package:flutter/widgets.dart';
import 'package:weather_icons/weather_icons.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      home: Yeah(),
    ),
  );
}

class Yeah extends StatefulWidget {
  const Yeah({super.key});

  @override
  State<Yeah> createState() => _YeahState();
}

class _YeahState extends State<Yeah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Minsk(),
          Look(),
        ],
      ),
    );
  }
}

class Minsk extends StatefulWidget {
  const Minsk({super.key});

  @override
  State<Minsk> createState() => _MinskState();
}

class _MinskState extends State<Minsk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40),
            topLeft: Radius.circular(40),
          ),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 106, 183, 246),
              Color.fromARGB(255, 23, 37, 246),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                          width: 1, color: Color.fromARGB(255, 210, 204, 204))),
                  child: Center(
                      child: Icon(
                    Icons.grid_view_rounded,
                    size: 12,
                    color: Colors.white,
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60, right: 60),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 18,
                        color: Colors.white,
                      ),
                      Text(
                        'Minsk',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                PopupMenuButton<String>(
                  iconSize: 22,
                  onSelected: (value) {
                    // ignore: avoid_print
                    print(value);
                  },
                  itemBuilder: (context) {
                    return <PopupMenuEntry<String>>[
                      PopupMenuItem<String>(
                        value: "Get to know the monthly weather",
                        child: Text("Monthly weather"),
                      ),
                      PopupMenuItem<String>(
                        value:
                            "Turn on location access on your device to let us access your current location weather",
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Weather of"),
                            Text('your location'),
                          ],
                        ),
                      ),
                      PopupMenuItem<String>(
                        value: "Customize Settings",
                        child: Text("Settings"),
                      ),
                    ];
                  },
                ),
              ],
            ),
            Container(
              height: 20,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(width: 1, color: Colors.white),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 2,
                    backgroundColor: Colors.yellow,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Updating',
                    style: TextStyle(fontSize: 8),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.thunderstorm_rounded,
              size: 230,
              shadows: [
                Shadow(
                    color: const Color.fromARGB(255, 66, 64, 64),
                    blurRadius: 20,
                    offset: Offset(10, 10))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "21",
                  style: TextStyle(
                    fontSize: 90,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: Text(
                    '°',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w100,
                        color: Color.fromARGB(255, 190, 186, 186)),
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Thunderstrom',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "Monday, 17 May",
                  style: TextStyle(
                      fontSize: 10,
                      color: const Color.fromARGB(255, 217, 214, 214)),
                ),
              ],
            ),
            Divider(
              thickness: 1,
              indent: 30,
              endIndent: 30,
              color: Color.fromARGB(255, 78, 174, 253),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.air,
                      size: 20,
                    ),
                    Text(
                      "13 km/h",
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                    Text(
                      'Wind',
                      style: TextStyle(
                          fontSize: 10,
                          color: Color.fromARGB(255, 194, 193, 193)),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.water_drop,
                      size: 20,
                      color: Color.fromARGB(255, 59, 160, 244),
                    ),
                    Text(
                      "24%",
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                    Text(
                      'Humidity',
                      style: TextStyle(
                          fontSize: 10,
                          color: Color.fromARGB(255, 196, 194, 194)),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.waves,
                      size: 15,
                    ),
                    Text(
                      "87%",
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                    Text(
                      'Chance of rain',
                      style: TextStyle(
                          fontSize: 10,
                          color: Color.fromARGB(255, 186, 186, 186)),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Container(
                    height: 180,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 30, 29, 29),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Today',
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            ),
                            SizedBox(
                              width: 180,
                            ),
                            Text(
                              '7 days >',
                              style: TextStyle(
                                fontSize: 10,
                                color: Color.fromARGB(255, 179, 174, 174),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              height: 80,
                              width: 60,
                              child: Card(
                                color: Color.fromARGB(255, 0, 0, 0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '23°',
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                    Icon(Icons.cloud),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      '10:00',
                                      style: TextStyle(
                                        fontSize: 8,
                                        color:
                                            Color.fromARGB(255, 172, 169, 169),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 90,
                              width: 65,
                              child: Card(
                                color: Colors.blue,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('21°'),
                                    Icon(
                                      Icons.thunderstorm,
                                      size: 35,
                                      color: Colors.yellow,
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Text(
                                      '11:00',
                                      style: TextStyle(
                                        fontSize: 8,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 80,
                              width: 55,
                              child: Card(
                                color: Color.fromARGB(255, 0, 0, 0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '22°',
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                    Icon(Icons.cloud),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      '12:00',
                                      style: TextStyle(
                                        fontSize: 8,
                                        color:
                                            Color.fromARGB(255, 172, 169, 169),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 80,
                              width: 55,
                              child: Card(
                                color: Color.fromARGB(255, 0, 0, 0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '19°',
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                    BoxedIcon(WeatherIcons.night_cloudy_windy,
                                        size: 17),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      '01:00',
                                      style: TextStyle(
                                        fontSize: 8,
                                        color:
                                            Color.fromARGB(255, 172, 169, 169),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GFButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/main');
                              },
                              text: "First Page",
                              blockButton: false,
                              shape: GFButtonShape.pills,
                            ),
                            GFButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/rock');
                              },
                              text: "Next Page",
                              shape: GFButtonShape.pills,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Look extends StatefulWidget {
  const Look({super.key});

  @override
  State<Look> createState() => _LookState();
}

class _LookState extends State<Look> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 11, 11, 11),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 270,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 115, 186, 243),
                    Color.fromARGB(255, 23, 37, 246),
                  ],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                                width: 1,
                                color: Color.fromARGB(255, 210, 204, 204))),
                        child: Center(
                          child: Icon(
                            Icons.arrow_back_ios,
                            size: 10,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 60, right: 60),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.event,
                              size: 20,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '7 days',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      PopupMenuButton<String>(
                        iconSize: 22,
                        onSelected: (value) {
                          // ignore: avoid_print
                          print(value);
                        },
                        itemBuilder: (context) {
                          return <PopupMenuEntry<String>>[
                            PopupMenuItem<String>(
                              value: "Get to know the monthly weather",
                              child: Text("Monthly weather"),
                            ),
                            PopupMenuItem<String>(
                              value:
                                  "Turn on location access on your device to let us access your current location weather",
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Weather of"),
                                  Text('your location'),
                                ],
                              ),
                            ),
                            PopupMenuItem<String>(
                              value: "Customize Settings",
                              child: Text("Settings"),
                            ),
                          ];
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.thunderstorm_rounded,
                        shadows: [
                          Shadow(
                            color: Color.fromARGB(255, 54, 53, 53),
                            blurRadius: 15,
                            offset: Offset(10, 5),
                          ),
                        ],
                        size: 90,
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Tomorrow',
                            style: TextStyle(fontSize: 15),
                          ),
                          Row(
                            children: [
                              Text(
                                "20",
                                style: TextStyle(
                                    fontSize: 50, fontWeight: FontWeight.w900),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 17),
                                child: Text(
                                  "/17°",
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Color.fromARGB(255, 57, 238, 210),
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'Rainy-Cloudy',
                            style: TextStyle(
                                fontSize: 10,
                                color: Color.fromARGB(255, 195, 190, 190)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 1,
                    indent: 40,
                    endIndent: 40,
                    color: const Color.fromARGB(255, 46, 152, 240),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.air,
                              size: 20,
                            ),
                            Text(
                              "9 km/h",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'Wind',
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Color.fromARGB(255, 194, 193, 193)),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.water_drop,
                              size: 20,
                              color: Color.fromARGB(255, 59, 160, 244),
                            ),
                            Text(
                              "31%",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'Humidity',
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Color.fromARGB(255, 196, 194, 194)),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.waves,
                              size: 15,
                            ),
                            Text(
                              "93%",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'Chance of rain',
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Color.fromARGB(255, 186, 186, 186)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Mon',
                    style: TextStyle(
                      fontSize: 13,
                      color: Color.fromARGB(255, 151, 148, 148),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.cloud,
                        size: 28,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Rainy',
                        style: TextStyle(
                          fontSize: 13,
                          color: Color.fromARGB(255, 145, 141, 141),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text("+20°"),
                      Text(
                        ' +14°',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(255, 145, 141, 141),
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Tue',
                  style: TextStyle(
                    fontSize: 13,
                    color: Color.fromARGB(255, 151, 148, 148),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.cloud,
                      size: 28,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Rainy',
                      style: TextStyle(
                        fontSize: 13,
                        color: Color.fromARGB(255, 145, 141, 141),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text("+22°"),
                    Text(
                      ' +16°',
                      style: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 145, 141, 141),
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Wed',
                  style: TextStyle(
                    fontSize: 13,
                    color: Color.fromARGB(255, 151, 148, 148),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.thunderstorm,
                      size: 28,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Storm',
                      style: TextStyle(
                        fontSize: 13,
                        color: Color.fromARGB(255, 145, 141, 141),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text("+19°"),
                    Text(
                      ' +13°',
                      style: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 145, 141, 141),
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Tue',
                  style: TextStyle(
                    fontSize: 13,
                    color: Color.fromARGB(255, 151, 148, 148),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.cloud,
                      size: 28,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Rainy',
                      style: TextStyle(
                        fontSize: 13,
                        color: Color.fromARGB(255, 145, 141, 141),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text("+22°"),
                    Text(
                      ' +16°',
                      style: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 145, 141, 141),
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Thu',
                  style: TextStyle(
                    fontSize: 13,
                    color: Color.fromARGB(255, 151, 148, 148),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.snowing,
                      size: 28,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Slow',
                      style: TextStyle(
                        fontSize: 13,
                        color: Color.fromARGB(255, 145, 141, 141),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text("+18°"),
                    Text(
                      ' +12°',
                      style: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 145, 141, 141),
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Tue',
                  style: TextStyle(
                    fontSize: 13,
                    color: Color.fromARGB(255, 151, 148, 148),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.cloud,
                      size: 28,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Rainy',
                      style: TextStyle(
                        fontSize: 13,
                        color: Color.fromARGB(255, 145, 141, 141),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text("+22°"),
                    Text(
                      ' +16°',
                      style: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 145, 141, 141),
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                    'Fri',
                    style: TextStyle(
                      fontSize: 13,
                      color: Color.fromARGB(255, 151, 148, 148),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Icon(
                        Icons.thunderstorm,
                        color: Colors.yellow,
                        size: 28,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Thunder',
                      style: TextStyle(
                        fontSize: 13,
                        color: Color.fromARGB(255, 145, 141, 141),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text("+23°"),
                    Text(
                      ' +19°',
                      style: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 145, 141, 141),
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Tue',
                  style: TextStyle(
                    fontSize: 13,
                    color: Color.fromARGB(255, 151, 148, 148),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.cloud,
                      size: 28,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Rainy',
                      style: TextStyle(
                        fontSize: 13,
                        color: Color.fromARGB(255, 145, 141, 141),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text("+22°"),
                    Text(
                      ' +16°',
                      style: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 145, 141, 141),
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Sat',
                  style: TextStyle(
                    fontSize: 13,
                    color: Color.fromARGB(255, 151, 148, 148),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.cloud,
                      size: 28,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Rainy',
                      style: TextStyle(
                        fontSize: 13,
                        color: Color.fromARGB(255, 145, 141, 141),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text("+25°"),
                    Text(
                      ' +17°',
                      style: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 145, 141, 141),
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Tue',
                  style: TextStyle(
                    fontSize: 13,
                    color: Color.fromARGB(255, 151, 148, 148),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.cloud,
                      size: 28,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Rainy',
                      style: TextStyle(
                        fontSize: 13,
                        color: Color.fromARGB(255, 145, 141, 141),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text("+22°"),
                    Text(
                      ' +16°',
                      style: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 145, 141, 141),
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Sun',
                    style: TextStyle(
                      fontSize: 13,
                      color: Color.fromARGB(255, 151, 148, 148),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.thunderstorm,
                        size: 28,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Storm',
                        style: TextStyle(
                          fontSize: 13,
                          color: Color.fromARGB(255, 145, 141, 141),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text("+21°"),
                      Text(
                        ' +18°',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(255, 145, 141, 141),
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
