// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class Third extends StatefulWidget {
  const Third({super.key});

  @override
  State<Third> createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "Qizil shapkacha",
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
                      "Bor ekan, yo'q ekan, bir qishloqda jajjigina bir qizcha bor ekan. U, dunyoda tengi yo'q, juda yoqimtoy ekan. Buvisi unga tug'ilgan kuni sharafiga bitta qizil shapkacha sovg'a qilibdi. Qizcha qayoqqa borsa, shu chiroyli, yangi qizil shapkachasini kiyib borar ekan. Qo'ni-qo'shnilar uni ko'rganda: , qizil Shapkacha kelyapti!  der ekanlar."),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 250,
                    width: double.infinity,
                    color: Colors.white,
                    child: Image(
                      image: AssetImage("images/qizil.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 50, left: 20, right: 20),
                  child: Text(
                      "Bir kuni oyisi somsa pishirib, qiziga: Oppoq qizim, qizil Shapkacha, mana bu somsa bilan kuvachadagi yog'ni buvingga oborib bergin, eson-omonligini bilib kelgin, — debdi.Qizil Shapkacha buvisini ko'rgani narigi qishloqqa ketibdi.U o'rmondan chiroyli gullar terib, sekin-asta ketayotsa, oldidan och Bo'ri chiqib qolibdi. Qizil Shapkacha, qayoqqa ketyapsan? — debdi Bo'ri.Buvimni ko'rgani ketyapman, buvimga mana bu somsalar bilan kuvachada yog' olib boryapman.Buvingning uyi uzoqdami? — deb so'rabdi Bo'ri.Ha, uzoqda, — deb javob beribdi qizil Shapkacha. — Huv anavi tegirmon orqasidagi qishloqda. Eng chekkadagi uyni ko'ryapsanmi? O'sha.Yaxshi, — debdi Bo'ri. — Men ham buvingni ko'rib kelaman. Men manavi yo'ldan boraman, sen bo'lsang, anavi yo'ldan"),
                ),
              ],
            ),
            Positioned(
              bottom: 10,
              right: 20,
              child: Text(
                '4',
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
