// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Fifth extends StatefulWidget {
  const Fifth({super.key});

  @override
  State<Fifth> createState() => _FifthState();
}

class _FifthState extends State<Fifth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          "Kichkintoy Olim polvon",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 250,
                    width: double.infinity,
                    color: Colors.white,
                    child: Image(
                      image: AssetImage("images/bot.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 50, left: 20, right: 20),
                  child: Text(
                      "Bir zamonlar, kichik bir qishloqda Olim ismli kichkintoy yigitcha yashar edi. Olimning tanasi kuchsiz va mayda bo‘lsa-da, uning aqli va yuragi katta edi. Uning eng katta orzusi polvon bo‘lish edi, ammo ko‘pchilik unga ishonmasdi.Qishloqda har yili katta kurash musobaqasi bo‘lib o‘tardi va Olim ham bu musobaqada ishtirok etishga qaror qildi. Uning do‘stlari va oila a’zolari unga yordam berish uchun birga kelishdi. Olim har kuni mashq qilar, ammo uning asosiy quroli aqli edi. U har bir raqibining kuchsiz tomonlarini aniqlab, ularni mag‘lub etish strategiyasini ishlab chiqardi.Musobaqa kuni keldi va Olim barchaning kutilmaganda polvonlarni birin-ketin mag‘lub etdi. Uning aqlli harakatlari va tezkorligi bilan u raqiblarini dog‘da qoldirdi. Finalda u eng kuchli raqibiga qarshi chiqdi va uning kutilmagan harakati bilan g‘alaba qozondi.Qishloq ahli Olimni qahramon sifatida kutib oldi. Ular endi Olimning faqat kuchsiz kichkintoy emas, balki aqlli va mard polvon ekanligini tushundilar. Olim esa o‘zining orzusiga yetganidan va boshqalarga har qanday qiyinchiliklarga qaramay."),
                ),
              ],
            ),
            Positioned(
              bottom: 4,
              right: 20,
              child: Text(
                '6',
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
