// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Seventh extends StatefulWidget {
  const Seventh({super.key});

  @override
  State<Seventh> createState() => _SeventhState();
}

class _SeventhState extends State<Seventh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[600],
        title: const Text(
          "Qalam va sichqon",
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
                      "Bir bor ekan, bir yo‘q ekan. Oddiygina bir qalam bo‘lgan ekan. Bir kuni uning egasi Valijon qalamini stol ustida unitib qoldiribdi. Paytdan foydalangan sichqoncha inidan chiqib qalamni tishlab olib qochmoqchi bo‘libdi.Iltimos, meni qo‘yib yubor — deb yalinibdi Qalam. — Meni nima qilmoqchisan? Yog‘ochdan yasalgan bo‘lsam, meni yeb bo‘lmaydi.Tishlarim qichishayapti, shuning uchun seni g‘ajimoqchiman, — debdi Sichqoncha va qalamni qattiq tishlab olibdi.O‘g‘riyapti, — deb baqiribdi Qalam. Men chizishni juda yaxshi ko‘raman. Maylimi so‘nggi bor rasm chizsam? — debdi Qalam.Sichqon rozi bo‘libdi. Qalam zo‘rg‘a nafasini rostlab oppoq varaqqa kattagina aylana chizibdi."),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 250,
                    width: double.infinity,
                    color: Colors.white,
                    child: Image(
                      image: AssetImage("images/qal.webp"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 50, left: 20, right: 20),
                  child: Text(
                      " Bu nima? Pishloqmi? — deb so‘rabdi Sichqoncha.Bo‘lishi mumkin, — debdi bosiqlik bilan Qalam va chizishda davom etibdi.Avval yuzini keyin esa quloqlari va katta-katta ko‘zlarini chizibdi.Axir, bu mushuk-ku! Yo‘q bo‘ldi, chizma, iltimos, — deb Sichqon yugurgancha iniga qochib ketibdi.Ha, bu haqiqiy mushuk, — deb baqairibdi Qalam.Shundan buyon Sichqoncha inidan tashqariga chiqmaydigan bo‘libdi."),
                ),
              ],
            ),
            Positioned(
              bottom: 10,
              right: 20,
              child: Text(
                '8',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
