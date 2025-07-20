import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PrayerTimesScreen(),
    );
  }
}

class PrayerTimesScreen extends StatefulWidget {
  const PrayerTimesScreen({super.key});

  @override
  PrayerTimesScreenState createState() => PrayerTimesScreenState();
}

class PrayerTimesScreenState extends State<PrayerTimesScreen> {
  List<Map<String, dynamic>> _tableData = [];
  bool _isLoading = false;
  String _errorMessage = '';

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    setState(() {
      _isLoading = true;
      _errorMessage = '';
    });

    try {
      final data = await _fetchData();
      setState(() {
        _tableData = data;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _errorMessage = 'Error: $e';
        _isLoading = false;
      });
    }
  }

  Future<List<Map<String, dynamic>>> _fetchData() async {
    String apiUrl = "https://islomapi.uz/api/present/day?region=qo%27qon";
    final response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return [
        {'label': 'Shahar', 'value': data['region']},
        {'label': 'Sana', 'value': data['date']},
        {'label': 'Hafta Kuni', 'value': data['weekday']},
        {'label': 'Hijriy Oy', 'value': data['hijri_date']['month']},
        {'label': 'Hijriy Kun', 'value': data['hijri_date']['day']},
        {
          'label': 'Bomdod va Saharlik',
          'value': data['times']['tong_saharlik']
        },
        {'label': 'Quyosh', 'value': data['times']['quyosh']},
        {'label': 'Peshin', 'value': data['times']['peshin']},
        {'label': 'Asr', 'value': data['times']['asr']},
        {'label': 'Shom va Iftorlik', 'value': data['times']['shom_iftor']},
        {'label': 'Hufton', 'value': data['times']['hufton']},
      ];
    } else {
      throw Exception('Failed to load data');
    }
  }

  Widget _buildTable() {
    return Table(
      border: TableBorder.all(width: 2, color: Colors.cyan.shade800),
      columnWidths: const {
        0: FlexColumnWidth(),
        1: FlexColumnWidth(),
      },
      children: _tableData.map((row) {
        final value = row['value'];
        final displayValue = value is int ? value.toString() : value;
        return TableRow(
          children: [
            TableCell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    row['label']!,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[900],
                    ),
                  ),
                ),
              ),
            ),
            TableCell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    displayValue!,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green[900],
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Namoz vaqtlari',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: RefreshIndicator(
        onRefresh: _loadData,
        child: _isLoading
            ? const Center(child: CircularProgressIndicator())
            : _errorMessage.isNotEmpty
                ? Center(child: Text(_errorMessage))
                : _tableData.isEmpty
                    ? const Center(child: Text('No data available'))
                    : SingleChildScrollView(
                        physics: const AlwaysScrollableScrollPhysics(),
                        padding: EdgeInsets.only(
                          top: mediaQuery.padding.top + kToolbarHeight + 30,
                          bottom: mediaQuery.padding.bottom,
                          left: 30,
                          right: 30,
                        ),
                        child: _buildTable(),
                      ),
      ),
    );
  }
}
