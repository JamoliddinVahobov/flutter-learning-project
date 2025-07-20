import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeNotifier(ThemeData.light()),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(
      builder: (context, themeNotifier, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: themeNotifier.getTheme(),
          home: const ThatPage(),
        );
      },
    );
  }
}

class ThemeNotifier extends ChangeNotifier {
  ThemeData _themeData;

  ThemeNotifier(this._themeData);

  getTheme() => _themeData;

  setTheme(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }
}

class ThatPage extends StatefulWidget {
  const ThatPage({super.key});

  @override
  State<ThatPage> createState() => _ThatPageState();
}

class _ThatPageState extends State<ThatPage> {
  String accountName = "Leonel Messi";
  String accountEmail = "leomessi@gmail.com";
  String image = "images/messi.jpg";
  final List<String> items = ['Item 1', 'Item 2', 'Item 3'];

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    final isDarkMode = themeNotifier.getTheme() == ThemeData.dark();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade700,
        title: const Text(
          'Home Page',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      // backgroundColor: Colors.orange[50],
      body: const Center(
        child: Text(
          'Drawer widget',
          style: TextStyle(fontSize: 40),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.teal[300],
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(accountName),
              accountEmail: Text(accountEmail),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(image),
                radius: 25,
              ),
              decoration: const BoxDecoration(color: Colors.blue),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 22,
                backgroundColor: Colors.blue[800],
                child: const Icon(
                  Icons.home,
                  color: Colors.white,
                ),
              ),
              title: const Text("Home page"),
              onTap: () {
                Navigator.pushNamed(context, 'home');
              },
            ),
            const SizedBox(
              height: 5,
            ),
            ListTile(
              leading: CircleAvatar(
                  radius: 22,
                  backgroundColor: Colors.blue[800],
                  child: const Icon(
                    Icons.settings,
                    color: Colors.white,
                  )),
              title: const Text("Settings"),
              onTap: () {
                Navigator.pushNamed(context, 'secondone');
              },
            ),
            const SizedBox(
              height: 5,
            ),
            ListTile(
              leading: CircleAvatar(
                  radius: 22,
                  backgroundColor: Colors.blue[800],
                  child: const Icon(
                    Icons.person,
                    color: Colors.white,
                  )),
              title: const Text("Profile"),
              onTap: () {
                Navigator.pushNamed(context, 'firstone');
              },
            ),
            const SizedBox(
              height: 5,
            ),
            ListTile(
              leading: CircleAvatar(
                  radius: 22,
                  backgroundColor: Colors.blue[800],
                  child: const Icon(
                    Icons.add_moderator,
                    color: Colors.white,
                  )),
              title: const Text("Add moderator"),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Moderator'),
                        content: const Text(
                            "I don't even know what a moderator is LOL"),
                        actions: [
                          TextButton(
                            child: const Text('Add'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("Cancel"),
                          ),
                        ],
                      );
                    });
              },
            ),
            const SizedBox(
              height: 5,
            ),
            ListTile(
              leading: CircleAvatar(
                  radius: 22,
                  backgroundColor: Colors.blue[800],
                  child: const Icon(
                    Icons.call,
                    color: Colors.white,
                  )),
              title: const Text("Phones"),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Phones'),
                        content: const Text("I have no idea why phones"),
                        actions: [
                          TextButton(
                            child: const Text('Call'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("Cancel"),
                          ),
                        ],
                      );
                    });
              },
            ),
            const SizedBox(
              height: 5,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 22,
                backgroundColor: Colors.blue[800],
                child: const Icon(
                  Icons.mode,
                  color: Colors.white,
                ),
              ),
              title: const Text("Change Mode"),
              trailing: Switch(
                splashRadius: 20,
                value: isDarkMode,
                onChanged: (bool value) {
                  themeNotifier
                      .setTheme(value ? ThemeData.dark() : ThemeData.light());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
