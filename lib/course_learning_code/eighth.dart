// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Eighth extends StatefulWidget {
  const Eighth({super.key});

  @override
  State<Eighth> createState() => _EighthState();
}

class _EighthState extends State<Eighth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 17, 2, 135),
        title: const Text(
          "Bahodir tabib",
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
                      "Bor ekan-u, yo‘q ekan, qadim-qadim zamonda, juda olis tomonda, baland tog‘lar etagidagi kichkina bir kulbada Bahodir ismli bola bobosi va buvisi bilan yashar ekan. Bahodir yashaydigan shaharda vabo kasali keng tarqalgan bo‘lib, otasi va onasi shu kasalga chalinib vafot etgan ekan. Buvasi uni erkalab, Bahodirtoy, deb chaqirarkan. Ammo bu baxtli kunlar ham uzoq davom etmabdi. Avvaliga buvisi, keyin buvasi qazo qilibdi. Bahodir bir o‘zi qolibdi."),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 250,
                    width: double.infinity,
                    color: Colors.white,
                    child: Image(
                      image: AssetImage("images/tab.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 50, left: 20, right: 20),
                  child: Text(
                      "Kunlarning birida ko‘chada bir qariya bilan uchrashib qolibdi. Qariyaning qo‘lida tor ko‘rib, uni uyiga mehmonga taklif qilibdi. Uy deyarli bo‘sh bo‘lib, katta sholchaning ustida ikkita ko‘rpa va ikkita yostiq bor ekan. Tokchada eskirgan idish-tovoqlar, devorda dutor osig‘liq turganmish. Dutor buvasiniki ekan. Demak, bola musiqani sevadi, o‘ylabdi mehmon va unga kuy chalib beribdi. Bola kuyni diqqat bilan tinglabdi. Keyin o‘zi shu kuyni dutorda ijro etibdi. Unga dutor chalishni buvasi o‘rgatgan ekan."),
                ),
              ],
            ),
            Positioned(
              bottom: 5,
              right: 20,
              child: Text(
                '9',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
