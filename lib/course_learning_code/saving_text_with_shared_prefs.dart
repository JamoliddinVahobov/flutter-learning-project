import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
      ),
      home: const SavedText(),
    );
  }
}

class SavedText extends StatefulWidget {
  const SavedText({super.key});

  @override
  State<SavedText> createState() => _SavedTextState();
}

class _SavedTextState extends State<SavedText> {
  TextEditingController inputController = TextEditingController();
  String _text = "";

  Future<void> saveText(String yeah) async {
    _text = inputController.text;
    final SharedPreferences saveText = await SharedPreferences.getInstance();
    await saveText.setString("someText", yeah);
    setState(() {
      _text = yeah;
    });
  }

  void loadText() async {
    final SharedPreferences saveIt = await SharedPreferences.getInstance();
    setState(() {
      _text = saveIt.getString("someText") ?? "no text found";
    });
  }

  @override
  void initState() {
    loadText();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Saved Text',
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: inputController,
                decoration: InputDecoration(
                  hintText: "Enter text here",
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                _text,
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 70),
                ),
                onPressed: () {
                  setState(() {
                    saveText(inputController.text);
                  });
                },
                child: const Text(
                  'Save',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
