// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          "Bo'g'irsoq",
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
                      "Chol bilan kampir bo'lgan ekan. Bir kuni chol kampiriga qarab: - Menga bo'g'irsoq pishirib ber, - debdi. - Unimiz yo'q-ku. Bo'g'irsoqni nimadan pishirib beraman? - debdi kampir. - Suprani qoqib-sidirsang, bo'g'irsoqqa yetadigan un yig'ilib qoladi, - debdi chol kampiriga. Kampir suprani qoqib-sidirib bo'g'irsoqqa yetadigan un yig'ibdi. Kampir unni qaymoqqa qoribdi, zuvala yasab bo'g'irsoq qilibdi va pechga joylabdi. Bo'g'irsoq qizarib , chiroyli bo'lib pishibdi. Kampir uni pech ichidan olib, sovishi uchun deraza raxiga qo'yibdi."),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 250,
                    width: double.infinity,
                    color: Colors.white,
                    child: Image(
                      image: AssetImage("images/bo.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 50, left: 20, right: 20),
                  child: Text(
                      "Yotaverib-yotaverib zerikkan bo'g'irsoq asta dumalab derazadan so'riga, so'ridan yerga tushibdi-da, eshik oldiga kelib qolibdi. Eshikdan dahlizga, dahlizdan pillapoyaga, pillapoyadan hovliga, hovlidan saroyga, saroydan tashqariga chiqib yo'lga ravona bo'libdi.Bo'g'irsoq yo'lda dumalab ketayotib, bir quyonni uchratib qolibdi: - Bo'g'irsoq, bo'g'irsoq! Men seni yeyman, - debdi quyon. - Meni yema, quyonvoy, men senga qo'shiq aytib beraman, - debdi bo'g'irsoq va qo'shiq ayta boshlabdi: - Men bo'g'irsoq, bo'g'irsoq, supradagi un-urvoq."),
                ),
              ],
            ),
            Positioned(
              bottom: 13,
              right: 20,
              child: Text(
                '3',
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
