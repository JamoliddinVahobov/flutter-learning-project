import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WeatherScreen(),
    );
  }
}

class WeatherService {
  final String baseUrl = 'https://wttr.in';

  Future<String> getWeather(String location) async {
    final Uri url = Uri.parse('$baseUrl/$location?format=4');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Failed to fetch weather');
    }
  }
}

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  WeatherService weatherService = WeatherService();
  List<String> weatherResults = [];
  bool isLoading = false;

  Future<void> fetchKokandWeatherMultipleTimes(int times) async {
    setState(() {
      isLoading = true; // Start loading
    });

    // Clear previous results
    weatherResults.clear();

    try {
      for (int i = 0; i < times; i++) {
        String weatherData = await weatherService.getWeather('kokand');
        setState(() {
          weatherResults.add('Attempt ${i + 1}: $weatherData');
        });
      }
    } catch (e) {
      setState(() {
        weatherResults.add('Error fetching weather data');
      });
    } finally {
      setState(() {
        isLoading = false; // End loading
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kokand Weather'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                fetchKokandWeatherMultipleTimes(5); // Fetch weather 5 times
              },
              child: const Text('Fetch Weather'),
            ),
            const SizedBox(height: 20),
            isLoading
                ? const CircularProgressIndicator() // Show loading indicator
                : Expanded(
                    child: ListView.builder(
                      itemCount: weatherResults.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(weatherResults[index]),
                        );
                      },
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
