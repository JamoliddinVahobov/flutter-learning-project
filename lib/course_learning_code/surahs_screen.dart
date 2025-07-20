import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Load saved theme mode from SharedPreferences
  final prefs = await SharedPreferences.getInstance();
  final bool isLightMode = prefs.getBool('isLightMode') ?? true;

  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(isLightMode: isLightMode),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Surahs',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor:
            const Color(0xFF1C1B18), // Brownish-black background
        appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xFF1C1B18)), // Lighter color for AppBar
      ),
      themeMode: themeProvider.themeMode, // Switch between light/dark modes
      home: const SurahsScreen(),
    );
  }
}

// ThemeProvider class to manage theme switching and save the state
class ThemeProvider extends ChangeNotifier {
  bool _isLightMode;
  ThemeMode get themeMode => _isLightMode ? ThemeMode.light : ThemeMode.dark;

  ThemeProvider({required bool isLightMode}) : _isLightMode = isLightMode;

  Future<void> toggleTheme() async {
    _isLightMode = !_isLightMode;
    notifyListeners();

    // Save the current theme mode in SharedPreferences
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('isLightMode', _isLightMode);
  }
}

class SurahsScreen extends StatefulWidget {
  const SurahsScreen({super.key});

  @override
  State<SurahsScreen> createState() => _SurahsScreenState();
}

class _SurahsScreenState extends State<SurahsScreen> {
  late Future<List<Map<String, dynamic>>> _surahsFuture;
  bool _isLightMode = true; // To track the current mode for icon change

  @override
  void initState() {
    super.initState();
    _surahsFuture = fetchData();
  }

  Future<List<Map<String, dynamic>>> fetchData() async {
    const String baseUrl = "https://api.alquran.cloud/v1/quran/uz.sodik";
    try {
      final response = await http.get(Uri.parse(baseUrl));
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final surahs = data['data']['surahs'] as List;
        return surahs.map((surah) {
          return {
            'number': surah['number'],
            'name': surah['name'],
            'englishName': surah['englishName'],
          };
        }).toList();
      } else {
        throw Exception('Failed to fetch Surah names');
      }
    } catch (e) {
      throw Exception('Error fetching data');
    }
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: FittedBox(child: Text('Surahs of the Quran')),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              icon: Icon(
                _isLightMode ? Icons.nightlight : Icons.sunny,
              ),
              onPressed: () {
                themeProvider.toggleTheme(); // Toggle the theme
                setState(() {
                  _isLightMode = !_isLightMode; // Toggle the icon
                });
              },
            ),
          ),
        ],
      ),
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: _surahsFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            final surahs = snapshot.data!;
            return Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 10),
              child: ListView.builder(
                itemCount: surahs.length,
                itemBuilder: (context, index) {
                  final surah = surahs[index];
                  return ListTile(
                    leading: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        surah['number'].toString(),
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                    ),
                    title: FittedBox(
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "${surah['englishName']} (${surah['name']})",
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                    ),
                  );
                },
              ),
            );
          } else {
            return const Center(child: Text('No data available'));
          }
        },
      ),
    );
  }
}
