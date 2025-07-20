// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, unnecessary_import
// ignore: prefer_const_literals_to_create_immutables

// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:weather_icons/weather_icons.dart';

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
      home: Rock(),
    ),
  );
}

class Rock extends StatefulWidget {
  const Rock({super.key});

  @override
  State<Rock> createState() => _RockState();
}

class _RockState extends State<Rock> {
  List ismlar = [
    "Ar-Rahman",
    "Ar-Rahim",
    "Al-Malik",
    "Al-Quddus",
    "As-Salam",
    "Al-Mu’min",
    "Al-Muhaymin",
    "Al-Aziz",
    "Al-Jabbar",
    "Al-Mutakabbir",
    "Al-Khaliq",
    "Al-Bari",
    "Al-Musawwir",
    "Al-Ghaffar",
    "Al-Qahhar",
    "Al-Wahhab",
    "Ar-Razzaq",
    "Al-Fattah",
    "Al-Alim",
    "Al-Qabid",
    "Al-Basit",
    "Al-Khafid",
    "Ar-Rafi",
    "Al-Muizz",
    "Al-Mudhill",
    "As-Sami",
    "Al-Basir",
    "Al-Hakam",
    "Al-Adl",
    "Al-Latif",
    "Al-Khabir",
    "Al-Halim",
    "Al-Azim",
    "Al-Ghafur",
    "Ash-Shakur",
    "Al-Ali",
    "Al-Kabir",
    "Al-Hafiz",
    "Al-Muqit",
    "Al-Hasib",
    "Al-Jalil",
    "Al-Karim",
    "Ar-Raqib",
    "Al-Mujib",
    "Al-Wasi",
    "Al-Hakim",
    "Al-Wadud",
    "Al-Majid",
    "Al-Baith",
    "Ash-Shahid",
    "Al-Haqq",
    "Al-Wakil",
    "Al-Qawiyy",
    "Al-Matin",
    "Al-Wali",
    "Al-Hamid",
    "Al-Muhsi",
    "Al-Mubdi",
    "Al-Muid",
    "Al-Muhyi",
    "Al-Mumit",
    "Al-Hayy",
    "Al-Qayyum",
    "Al-Wajid",
    "Al-Majid",
    "Al-Wahid",
    "Al-Ahad",
    "As-Samad",
    "Al-Qadir",
    "Al-Muqtadir",
    "Al-Muqaddim",
    "Al-Muakhkhir",
    "Al-Awwal",
    "Al-Akhir",
    "Az-Zahir",
    "Al-Batin",
    "Al-Wali",
    "Al-Mutaali",
    "Al-Barr",
    "At-Tawwab",
    "Al-Muntaqim",
    "Al-Afuww",
    "Ar-Ra’uf",
    "Malik-ul-Mulk",
    "Dhul-Jalali Wal-Ikram",
    "Al-Muqsit",
    "Al-Jami",
    "Al-Ghani",
    "Al-Mughni",
    "Al-Mani",
    "Ad-Darr",
    "An-Nafi",
    "An-Nur",
    "Al-Hadi",
    "Al-Badi",
    "Al-Baqi",
    "Al-Warith",
    "Ar-Rashid",
    "As-Sabur",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Allohning 99 ismlari",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/Kaba.jpg"), fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: ismlar
                .map(
                  (value) => SizedBox(
                    height: 100,
                    width: 300,
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Card(
                        color: Colors.green,
                        child: Center(
                          child: Text(
                            value,
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
