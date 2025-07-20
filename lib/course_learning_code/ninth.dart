// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Ninth extends StatefulWidget {
  const Ninth({super.key});

  @override
  State<Ninth> createState() => _NinthState();
}

class _NinthState extends State<Ninth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 167, 196, 5),
        title: const Text(
          "Piyozvoy nega xomush",
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
                      "Oshxonada savlat toʻkib turgan javon ichida yotaverib zerikkan sabzavotlar oʻzaro gurungga kirishibdi.Suhbatni bir tomoni oftob koʻrmay sargʻayib pishgan Pomidor boshlabdi:Shakl jihatdan kamina ham meva, ham sabzavotga oʻtaveraman. Ayniqsa, shu xonadonning chaqqon qizi Munisa meni juda ham yaxshi koʻradi, – dedi va qoʻshib qoʻydi, – goh “oltin olma”, goh pomidorim – hammasi dorim, deb erkalaydi. Shifobaxshligim bois men odamlarga juda kerakman!  Qoʻying, Pomidorxon, koʻp ham maqtanmang, baribir kamina-yu kamtarin Kartoshkabekka hech bir sabzavot foydalilikda teng kelolmaydi. Meni-chi, istasa yogʻda qovuradi, istasa suvda qaynatadi. Agar xohlasa, qoʻrga koʻmib pishirishlari mumkin. Har qanday holatda ham totli boʻlib pishaman. Aytmoqchi, men “S” vitaminining koniman."),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 250,
                    width: double.infinity,
                    color: Colors.white,
                    child: Image(
                      image: AssetImage("images/piy.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 50, left: 20, right: 20),
                  child: Text(
                      "Shu payt Sholgʻomoy yanoqlarini qizartirib gapga chogʻlandi:Kartoshkabek, maqtanishda Pomidorxondan qolishmaysiz! Har holda siz aytgan “moʻjizalar”, bizning ham qoʻlimizdan keladi."),
                ),
              ],
            ),
            Positioned(
              bottom: 6,
              right: 20,
              child: Text(
                '10',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
