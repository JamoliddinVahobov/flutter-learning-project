// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class Fourth extends StatefulWidget {
  const Fourth({super.key});

  @override
  State<Fourth> createState() => _FourthState();
}

class _FourthState extends State<Fourth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          "Bo'ri va yetti uloqcha",
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
                      "Qadim o`tgan zamonlarda bir echki bor ekan. Uning yettita uloqchasi bo’lgan ekan. Hamma onalar singari u ham bolalarining yettovini birdek yaxshi ko’rar va erkalar ekan. Bolajonlarim, siz eshikni mahkam yopib, hech kimga ochmay o’tiring. O’rmonda och bo’ri izg’ib yuribdi. Ehtiyot bo’ling! – deb tayinlarkan.Ona echki o’rmonda o’t-o’lan bilan ovqatlanib, muzdek suv ichib, bolalarining oldiga kelarkan. Eshikni taqillatib qo’shiq aytar ekan:"),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 250,
                    width: double.infinity,
                    color: Colors.white,
                    child: Image(
                      image: AssetImage("images/uloq.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 50, left: 20, right: 20),
                  child: Text(
                      "Uloqchalarim, bolajonlarim!Eshikni oching, mehribonlarim!Onangiz sizga sut olib keldi,Yelini to’lib, yerga to’kildi.Bolalari shu zaxoti eshikni ochib onasini kutib olishar edi. Ona echki ularni ovqatlantirib, yana o’rmonga ketar ekan.Uloqchalar, bolachalar!Eshikni oching,Onangiz keldi,Sut olib keldi.Echki bolalari:Eshityapmiz, eshityapmiz. Ovozing onamizniki emas! Onamiz ingichka ovoz bilan qo’shiq aytadi.Hoy bo’ri bu yerdan yo’qol!Bo’ri o’ylab-o’ylab ovozini o’zgartirish uchun temirchining yoniga ketibti. Uloqchalarim, bolajonlarim!Eshikni oching, mehribonlarim!"),
                ),
              ],
            ),
            Positioned(
              bottom: 4,
              right: 20,
              child: Text(
                '5',
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
