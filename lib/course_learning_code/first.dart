// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          "Cho‘pon yigit",
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
                      "Bir zamonlar, uzoq-uzoq o‘lkalarning birida, kichik bir qishloqda cho‘pon yigit yashar edi. Yigitning ismi Baxtiyor edi. U kuchli, mehnatsevar va yuragi pok edi. Baxtiyor kundan-kunga otasining qo‘ylarini boqish bilan mashg‘ul bo‘lar, ularni tog‘larga olib chiqar, kechqurun esa qaytar edi.Bir kuni, Baxtiyorning qo‘ylari uni noma’lum bir joyga olib ketishdi, u yerda ularni kutib turgan narsa — ulkan ajdar edi. Ajdar yigitdan uning qo‘ylarini talab qildi. Biroq Baxtiyor qo‘rqmadi. U ajdarga qarshi turishga qaror qildi va unga aql bilan yondashdi.«Men senga qo‘ylarimni bermayman,» dedi Baxtiyor. «Lekin agar sen menga bir muammoni hal qilishimda yordam bersang, men senga bir boylik beraman.»"),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 250,
                    width: double.infinity,
                    color: Colors.white,
                    child: Image(
                      image: AssetImage("images/ch.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 50, left: 20, right: 20),
                  child: Text(
                      "Ajdar qiziqib qoldi va rozi bo‘ldi. Baxtiyor ajdarga qishloqda ko‘p yillardan beri hal qilinmagan bir masala haqida gapirib berdi. Masala shundan iborat ediki, qishloqdagi chashma suvi kamayib ketgan va hech kim sababini bilmas edi.Ajdar chashmaga borib, uning ostida yo‘lni to‘sib qo‘ygan katta toshni ko‘rdi. U kuchi bilan toshni ko‘tarib."),
                ),
              ],
            ),
            Positioned(
              bottom: 5,
              right: 20,
              child: Text(
                '2',
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
