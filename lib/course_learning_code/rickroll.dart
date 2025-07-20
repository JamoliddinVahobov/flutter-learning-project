// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kingofcomfort/course_learning_code/explore_page.dart';
// import 'package:getwidget/getwidget.dart';
import 'package:kingofcomfort/course_learning_code/snackbar.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Crackers(),
      routes: {
        '/explore': (context) => Explore(),
        '/atit': (context) => At(),
      },
    ),
  );
}

class Crackers extends StatefulWidget {
  const Crackers({super.key});

  @override
  State<Crackers> createState() => _CrackersState();
}

class _CrackersState extends State<Crackers> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 40,
          centerTitle: true,
          backgroundColor: Colors.green,
          title: Text(
            'Messages and Calls',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          bottom: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 3,
            indicatorColor: Colors.blue[700],
            tabs: [
              Tab(
                text: 'Messages',
                icon: Icon(
                  Icons.message,
                ),
              ),
              Tab(
                text: 'Calls',
                icon: Icon(
                  Icons.call,
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text(
                "No Messages here yet",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            Calls(),
          ],
        ),
      ),
    );
  }
}

class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  int realindex = 0;
  final List<Widget> horntail = [
    Gif(),
    Recents(),
    Contacts(),
  ];
  void smth(int index) {
    setState(() {
      realindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: horntail.elementAt(realindex),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: Colors.black.withOpacity(0.1),
        buttonBackgroundColor: Color.fromARGB(255, 231, 190, 130),
        items: [
          CurvedNavigationBarItem(
            child: Icon(
              CupertinoIcons.star,
            ),
            label: 'Favorites',
          ),
          CurvedNavigationBarItem(
            child: Icon(
              CupertinoIcons.clock,
            ),
            label: 'Recents',
          ),
          CurvedNavigationBarItem(
            child: Icon(
              Icons.people,
            ),
            label: 'Contacts',
          ),
        ],
        onTap: smth,
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return DialPad();
              },
            );
          },
          backgroundColor: Colors.brown,
          child: Icon(
            Icons.dialpad,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class Contacts extends StatefulWidget {
  const Contacts({super.key});

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ListTile(
                  onTap: () {},
                  leading: CircleAvatar(
                    backgroundColor: Colors.yellow,
                    child: Text('B'),
                  ),
                  title: Text("Person $index"),
                );
              },
              childCount: 51,
            ),
          ),
        ],
      ),
    );
  }
}

class Recents extends StatefulWidget {
  const Recents({super.key});

  @override
  State<Recents> createState() => _RecentsState();
}

class _RecentsState extends State<Recents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ListTile(
                  onTap: () {},
                  leading: CircleAvatar(
                    backgroundColor: Colors.red,
                    child: Text('A'),
                  ),
                  title: Text("Call person $index"),
                  subtitle: Text('$index days ago'),
                );
              },
              childCount: 26,
            ),
          ),
        ],
      ),
    );
  }
}

class Gif extends StatefulWidget {
  const Gif({super.key});

  @override
  State<Gif> createState() => _GifState();
}

class _GifState extends State<Gif> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.transparent,
              height: 250,
              width: 350,
              child: Image.asset(
                "images/rick.gif",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Call your favorite contacts",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black.withOpacity(0.7),
              ),
            ),
            Text(
              "with just one tap",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black.withOpacity(0.7),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Add a favorite',
                style: TextStyle(
                  color: Colors.brown,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: use_key_in_widget_constructors
class DialPad extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _DialPadState createState() => _DialPadState();
}

class _DialPadState extends State<DialPad> {
  String dialedNumber = '';

  Widget buildDialPadButton(String number) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              dialedNumber += number;
            });
          },
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            padding: EdgeInsets.all(12),
          ),
          child: Text(
            number,
            style: TextStyle(
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Text(
            dialedNumber,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    buildDialPadButton(
                      '1',
                    ),
                    buildDialPadButton('2'),
                    buildDialPadButton('3'),
                  ],
                ),
                Row(
                  children: [
                    buildDialPadButton('4'),
                    buildDialPadButton('5'),
                    buildDialPadButton('6'),
                  ],
                ),
                Row(
                  children: [
                    buildDialPadButton('7'),
                    buildDialPadButton('8'),
                    buildDialPadButton('9'),
                  ],
                ),
                Row(
                  children: [
                    buildDialPadButton('*'),
                    buildDialPadButton('0'),
                    buildDialPadButton('#'),
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (dialedNumber.isNotEmpty) {
                      dialedNumber =
                          dialedNumber.substring(0, dialedNumber.length - 1);
                    }
                  });
                },
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(20),
                ),
                child: Icon(Icons.backspace),
              ),
              SizedBox(
                width: 30,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  backgroundColor: Colors.green,
                  padding: EdgeInsets.all(20),
                ),
                child: Icon(Icons.phone),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
