import 'package:flutter/material.dart';
import 'dart:convert';
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
      home: CurrencyRatesScreen(),
    );
  }
}

class CurrencyRatesScreen extends StatefulWidget {
  const CurrencyRatesScreen({super.key});

  @override
  CurrencyRatesScreenState createState() => CurrencyRatesScreenState();
}

class CurrencyRatesScreenState extends State<CurrencyRatesScreen> {
  List<dynamic> currencyRates = [];
  String fromCurrency = 'USD'; // Default from currency
  String toCurrency = 'UZS'; // Default to currency
  double inputAmount = 1.0; // Initial input amount
  double convertedAmount = 0.0;
  TextEditingController amountController = TextEditingController();

  @override
  void initState() {
    super.initState();
    fetchCurrencyRates();
  }

  @override
  void dispose() {
    amountController.dispose(); // Dispose of the controller
    super.dispose();
  }

  Future<void> fetchCurrencyRates() async {
    final response = await http
        .get(Uri.parse('https://cbu.uz/uz/arkhiv-kursov-valyut/json/'));

    if (response.statusCode == 200) {
      setState(() {
        currencyRates = json.decode(response.body);
        // Set default values based on the fetched currency rates
        if (currencyRates.isNotEmpty) {
          fromCurrency = currencyRates[0]['Ccy']; // First currency in the list
          toCurrency = currencyRates[0][
              'Ccy']; // First currency in the list (or you can set another default)
        }
      });
    } else {
      throw Exception('Failed to load currency rates');
    }
  }

  double getExchangeRate(String currencyCode) {
    var currency =
        currencyRates.firstWhere((element) => element['Ccy'] == currencyCode);
    return double.parse(currency['Rate']);
  }

  void convertCurrency() {
    double fromRate = getExchangeRate(fromCurrency);
    double toRate = getExchangeRate(toCurrency);
    setState(() {
      convertedAmount = (inputAmount / fromRate) * toRate;
    });
  }

  void clearAll() {
    setState(() {
      convertedAmount = 0.0;
      amountController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 210,
        flexibleSpace: currencyRates.isEmpty
            ? const Center(child: CircularProgressIndicator())
            : Container(
                padding: const EdgeInsets.fromLTRB(20, 40, 20, 10),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blueAccent, Colors.lightBlue],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(30)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Currency Calculator',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: DropdownButton<String>(
                            value: fromCurrency,
                            style: const TextStyle(color: Colors.black),
                            dropdownColor: Colors.white,
                            items: currencyRates
                                .map<DropdownMenuItem<String>>((currency) {
                              return DropdownMenuItem<String>(
                                value: currency['Ccy'],
                                child: Center(child: Text(currency['Ccy'])),
                              );
                            }).toList(),
                            onChanged: (newValue) {
                              setState(() {
                                fromCurrency = newValue!;
                                convertCurrency(); // Update converted amount on currency change
                              });
                            },
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          flex: 4,
                          child: TextField(
                            controller: amountController,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              labelText: 'Amount',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              suffixIcon: IconButton(
                                onPressed: clearAll,
                                icon: const Icon(Icons.clear),
                              ),
                            ),
                            onChanged: (value) {
                              setState(() {
                                inputAmount = double.tryParse(value) ??
                                    0.0; // Set to 0.0 if parsing fails
                                convertCurrency(); // Update converted amount
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: DropdownButton<String>(
                            value: toCurrency,
                            style: const TextStyle(color: Colors.black),
                            dropdownColor: Colors.white,
                            items: currencyRates
                                .map<DropdownMenuItem<String>>((currency) {
                              return DropdownMenuItem<String>(
                                value: currency['Ccy'],
                                child: Center(child: Text(currency['Ccy'])),
                              );
                            }).toList(),
                            onChanged: (newValue) {
                              setState(() {
                                toCurrency = newValue!;
                                convertCurrency(); // Update converted amount on currency change
                              });
                            },
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          flex: 4,
                          child: Container(
                            height: 50,
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                convertedAmount.toStringAsFixed(
                                    2), // Display converted amount with two decimal places
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
      ),
      body: currencyRates.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              padding: const EdgeInsets.only(bottom: 20),
              itemCount: currencyRates.length,
              itemBuilder: (context, index) {
                var rate = currencyRates[index];
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3), // shadow position
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${rate['CcyNm_EN']} (${rate['Ccy']})',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          '${rate['CcyNm_UZ']}',
                          style: const TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: double.parse(rate['Diff']) < 0
                                ? Colors.red
                                : Colors.green,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Text(
                              'Diff:  ${rate['Diff']}',
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'Nominal: ${rate['Nominal']}',
                          style: const TextStyle(fontSize: 16),
                        ),
                        Text(
                          'Rate: ${rate['Rate']}',
                          style: const TextStyle(fontSize: 16),
                        ),
                        Text(
                          'Date: ${rate['Date']}',
                          style: const TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}
