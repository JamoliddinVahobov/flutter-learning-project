// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Tenth extends StatefulWidget {
  const Tenth({super.key});

  @override
  State<Tenth> createState() => _TenthState();
}

class _TenthState extends State<Tenth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 139, 4, 4),
        title: const Text(
          "Qizaloq Guli va sehrli o‘rmon",
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
                      "Bir zamonlar, tog‘larning etagida, ko‘klamning to‘liq ochilgan gullari bilan bezatilgan, mo‘‘jazgina qishloq bor edi. Shu qishloqda Guli ismli yosh qizaloq yashardi. Gulining eng katta qiziqishi o‘rmonni sayr qilish edi, u yerda u har kuni yangi sarguzashtlarni kashf etardi."),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 250,
                    width: double.infinity,
                    color: Colors.white,
                    child: Image(
                      image: AssetImage("images/qiz.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 50, left: 20, right: 20),
                  child: Text(
                      "Bir kun, Guli o‘rmonning chuqurroq qismlariga kirib ketdi va o‘zini sehrli dunyoda topdi. Bu yerda daraxtlar gapira olar, hayvonlar inson tilida so‘zlashar va har bir gul o‘zining hikoyasiga ega edi.Guli o‘rmon ichida kezib yurganda, u bir chetda yig‘layotgan kichkintoy tulkiga duch keldi. Tulki Guliga o‘zining sehrli marvaridini yo‘qotib qo‘yganini aytib berdi. Bu marvarid tulkining oilasiga avlodlar davomida meros bo‘lib kelgan edi.Guli tulkiga yordam berishga qaror qildi va ikkovlon marvaridni izlab o‘rmonni kezishni boshlashdi. Yo‘l-yo‘lakay ular ko‘plab hayvonlar bilan uchrashdilar: aqlli bug‘u, o‘ynoqi quyonlar, va hatto shamol bilan suhbatlashadigan daraxtlar.Har bir mavjudot ularga marvaridni topish yo‘lida yordam berdi, biroq hech kim aniq joyini bilmas edi. "),
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              right: 20,
              child: Text(
                '11',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
