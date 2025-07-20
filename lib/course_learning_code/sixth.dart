// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Sixth extends StatefulWidget {
  const Sixth({super.key});

  @override
  State<Sixth> createState() => _SixthState();
}

class _SixthState extends State<Sixth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 57, 156, 237),
        title: const Text(
          "Opa-singil daryolar",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: Text(
                      "Bir bor ekan, bir yo‘q ekan, uch opa-singil daryolar bo‘lgan ekan. Kattasining ismi Amudaryo, o‘rtanchasiniki Sirdaryo va kenjasining ismi Zarafshon ekan."),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 250,
                    width: double.infinity,
                    color: Colors.white,
                    child: Image(
                      image: AssetImage("images/opa.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 50, left: 20, right: 20),
                  child: Text(
                      "Amudaryo kattasi bo‘lgani uchun Tojikistonning Panj viloyatidan Orol dengizigacha bo‘lgan masofada yumushlarni bajarar, hammaga shirindan shakar zilol suvini ulashar ekan. Amudaryoni barcha dov-daraxtlar, giyohlar va ekin-tikinlar yaxshi ko‘rar ekan. U Qoraqum va Qizilqum cho‘llarini ikkiga ajratib turarkan. O‘zbekiston orqali turkman eliga o‘tib, suv tashir, qaytib kelib, Orol dengiziga quyilarkan. Uning shahdu shiddati juda mo‘l, ko‘plab ishlarni yolg‘iz o‘zi bajarar ekan.Sirdaryo ham go‘zallikda opasi Amudaryodan qolishmas ekan. Uning qaddi raso, yuzlari tiniq, sochlari Amudaryoday shovullab turarkan. Sirdaryo, Norin va Qoradaryo kabi daryolarning birlashishidan hosil bo‘lib, bu sirni hammadan sir tutib yasharkan. Chaqqonlikda opasi Amudaryoga teng kelolmasa ham, harakatdan to‘xtamas ekan."),
                ),
              ],
            ),
            Positioned(
              bottom: 5,
              right: 20,
              child: Text(
                '7',
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
