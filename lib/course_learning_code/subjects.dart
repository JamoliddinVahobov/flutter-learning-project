// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutable, prefer_const_literals_to_create_immutables, sized_box_for_whitespace
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.teal,
        //   leading: Icon(Icons.menu, color: Colors.white),
        //   title: Text(
        //     "Imtihon",
        //     style: TextStyle(
        //         color: Colors.white,
        //         fontSize: 25,
        //         fontWeight: FontWeight.w900,
        //         fontStyle: FontStyle.italic,
        //         letterSpacing: 8),
        //   ),
        //   centerTitle: true,
        //   toolbarHeight: 40,
        // ),
        // backgroundColor: Colors.teal,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Table(
                border: TableBorder.all(color: Colors.black, width: 2),
                columnWidths: {
                  0: FractionColumnWidth(0.05),
                  1: FractionColumnWidth(0.10),
                  2: FractionColumnWidth(0.20),
                  3: FractionColumnWidth(0.08),
                  4: FractionColumnWidth(0.10),
                  5: FractionColumnWidth(0.10),
                  6: FractionColumnWidth(0.18),
                  7: FractionColumnWidth(0.12),
                  8: FractionColumnWidth(0.06),
                },
                children: [
                  TableRow(children: [
                    // ignore: duplicate_ignore
                    // ignore: sized_box_for_whitespace
                    Container(
                      height: 60,
                      width: 20,
                      child: Center(child: Text('9')),
                    ),
                    TableCell(
                      child: Container(
                        height: 60,
                        width: 40,
                        child: Center(
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage("images/good.jpg"),
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      // ignore: duplicate_ignore
                      // ignore: sized_box_for_whitespace
                      child: Container(
                        height: 60,
                        width: 60,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FittedBox(child: Text('Geografiya va')),
                            FittedBox(child: Text('tabiiy resurslar')),
                          ],
                        ),
                      ),
                    ),
                    TableCell(
                      // ignore: duplicate_ignore
                      // ignore: sized_box_for_whitespace
                      child: Container(
                        height: 60,
                        width: 25,
                        child: Center(child: Text('5')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        height: 60,
                        width: 30,
                        child: Center(child: Text('2')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        height: 60,
                        width: 30,
                        child: Center(child: Text('0')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        height: 60,
                        width: 60,
                        child: Center(child: Text('3')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        height: 60,
                        width: 30,
                        child:
                            Center(child: FittedBox(child: Text('18-20(-2)'))),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        height: 60,
                        width: 20,
                        child: Center(child: Text('6')),
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    // ignore: duplicate_ignore
                    // ignore: sized_box_for_whitespace
                    Container(
                      height: 60,
                      width: 20,
                      child: Center(child: Text('10')),
                    ),
                    TableCell(
                      child: Container(
                        height: 60,
                        width: 40,
                        child: Center(
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage("images/nice.png"),
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      // ignore: duplicate_ignore
                      // ignore: sized_box_for_whitespace
                      child: Container(
                        height: 60,
                        width: 60,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FittedBox(child: Text('Geologiya va')),
                            FittedBox(child: Text('geoinformatsion')),
                            FittedBox(child: Text('tizimlar')),
                          ],
                        ),
                      ),
                    ),
                    TableCell(
                      // ignore: duplicate_ignore
                      // ignore: sized_box_for_whitespace
                      child: Container(
                        height: 60,
                        width: 25,
                        child: Center(child: Text('5')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        height: 60,
                        width: 30,
                        child: Center(child: Text('2')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        height: 60,
                        width: 30,
                        child: Center(child: Text('0')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        height: 60,
                        width: 60,
                        child: Center(child: Text('3')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        height: 60,
                        width: 30,
                        child:
                            Center(child: FittedBox(child: Text('15-19(-4)'))),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        height: 60,
                        width: 20,
                        child: Center(child: Text('6')),
                      ),
                    ),
                  ]),
                  // separate
                  // separate
                  TableRow(children: [
                    // ignore: duplicate_ignore
                    // ignore: sized_box_for_whitespace
                    Container(
                      height: 60,
                      width: 20,
                      child: Center(child: Text('11')),
                    ),
                    TableCell(
                      child: Container(
                        height: 60,
                        width: 40,
                        child: Center(
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage("images/yoo.jpg"),
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      // ignore: duplicate_ignore
                      // ignore: sized_box_for_whitespace
                      child: Container(
                        height: 60,
                        width: 60,
                        child: Center(child: Text('Kimyo')),
                      ),
                    ),
                    TableCell(
                      // ignore: duplicate_ignore
                      // ignore: sized_box_for_whitespace
                      child: Container(
                        height: 60,
                        width: 25,
                        child: Center(child: Text('5')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        height: 60,
                        width: 30,
                        child: Center(child: Text('2')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        height: 60,
                        width: 30,
                        child: Center(child: Text('0')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        height: 60,
                        width: 60,
                        child: Center(child: Text('3')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        height: 60,
                        width: 30,
                        child:
                            Center(child: FittedBox(child: Text('12-16(-2)'))),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        height: 60,
                        width: 20,
                        child: Center(child: Text('6')),
                      ),
                    ),
                  ]),
                  // separate
                  // separate
                  TableRow(children: [
                    // ignore: duplicate_ignore
                    // ignore: sized_box_for_whitespace
                    Container(
                      height: 60,
                      width: 20,
                      child: Center(child: Text('12')),
                    ),
                    TableCell(
                      child: Container(
                        height: 60,
                        width: 40,
                        child: Center(
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage("images/re.png"),
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      // ignore: duplicate_ignore
                      // ignore: sized_box_for_whitespace
                      child: Container(
                        height: 60,
                        width: 60,
                        child: Center(child: Text('Rektorat')),
                      ),
                    ),
                    TableCell(
                      // ignore: duplicate_ignore
                      // ignore: sized_box_for_whitespace
                      child: Container(
                        height: 60,
                        width: 25,
                        child: Center(child: Text('5')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        height: 60,
                        width: 30,
                        child: Center(child: Text('1')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        height: 60,
                        width: 30,
                        child: Center(child: Text('0')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        height: 60,
                        width: 60,
                        child: Center(child: Text('4')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        height: 60,
                        width: 30,
                        child:
                            Center(child: FittedBox(child: Text('7-14(-7)'))),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        height: 60,
                        width: 20,
                        child: Center(child: Text('3')),
                      ),
                    ),
                  ]),
                  // separate
                  // separate
                  TableRow(children: [
                    // ignore: duplicate_ignore
                    // ignore: sized_box_for_whitespace
                    Container(
                      height: 60,
                      width: 20,
                      child: Center(child: Text('13')),
                    ),
                    TableCell(
                      child: Container(
                        height: 60,
                        width: 40,
                        child: Center(
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage("images/iqti.jpg"),
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      // ignore: duplicate_ignore
                      // ignore: sized_box_for_whitespace
                      child: Container(
                        height: 60,
                        width: 60,
                        child: Center(child: Text('Iqtisodiyot')),
                      ),
                    ),
                    TableCell(
                      // ignore: duplicate_ignore
                      // ignore: sized_box_for_whitespace
                      child: Container(
                        height: 60,
                        width: 25,
                        child: Center(child: Text('5')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        height: 60,
                        width: 30,
                        child: Center(child: Text('1')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        height: 60,
                        width: 30,
                        child: Center(child: Text('0')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        height: 60,
                        width: 60,
                        child: Center(child: Text('4')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        height: 60,
                        width: 30,
                        child:
                            Center(child: FittedBox(child: Text('16-29(-13)'))),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        height: 60,
                        width: 20,
                        child: Center(child: Text('3')),
                      ),
                    ),
                  ]), // separate
                  // separate
                  TableRow(children: [
                    // ignore: duplicate_ignore
                    // ignore: sized_box_for_whitespace
                    Container(
                      height: 60,
                      width: 20,
                      child: Center(child: Text('14')),
                    ),
                    TableCell(
                      child: Container(
                        height: 60,
                        width: 40,
                        child: Center(
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage("images/gidro.jpg"),
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      // ignore: duplicate_ignore
                      // ignore: sized_box_for_whitespace
                      child: Container(
                        height: 60,
                        width: 60,
                        child: Center(child: Text('Gidrometeorologiya')),
                      ),
                    ),
                    TableCell(
                      // ignore: duplicate_ignore
                      // ignore: sized_box_for_whitespace
                      child: Container(
                        height: 60,
                        width: 25,
                        child: Center(child: Text('5')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        height: 60,
                        width: 30,
                        child: Center(child: Text('1')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        height: 60,
                        width: 30,
                        child: Center(child: Text('0')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        height: 60,
                        width: 60,
                        child: Center(child: Text('4')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        height: 60,
                        width: 30,
                        child:
                            Center(child: FittedBox(child: Text('13-27(-14)'))),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        height: 60,
                        width: 20,
                        child: Center(child: Text('3')),
                      ),
                    ),
                  ]), // separate
                  // separate
                  TableRow(children: [
                    // ignore: duplicate_ignore
                    // ignore: sized_box_for_whitespace
                    Container(
                      height: 60,
                      width: 20,
                      child: Center(child: Text('15')),
                    ),
                    TableCell(
                      child: Container(
                        height: 60,
                        width: 40,
                        child: Center(
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage("images/eko.jpg"),
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      // ignore: duplicate_ignore
                      // ignore: sized_box_for_whitespace
                      child: Container(
                        height: 60,
                        width: 60,
                        child: Center(child: Text('Ekologiya')),
                      ),
                    ),
                    TableCell(
                      // ignore: duplicate_ignore
                      // ignore: sized_box_for_whitespace
                      child: Container(
                        height: 60,
                        width: 25,
                        child: Center(child: Text('5')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        height: 60,
                        width: 30,
                        child: Center(child: Text('1')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        height: 60,
                        width: 30,
                        child: Center(child: Text('0')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        height: 60,
                        width: 60,
                        child: Center(child: Text('4')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        height: 60,
                        width: 30,
                        child:
                            Center(child: FittedBox(child: Text('12-27(-15)'))),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        height: 60,
                        width: 20,
                        child: Center(child: Text('3')),
                      ),
                    ),
                  ]),
                  // separate
                  // separate
                  TableRow(children: [
                    // ignore: duplicate_ignore
                    // ignore: sized_box_for_whitespace
                    Container(
                      height: 60,
                      width: 20,
                      child: Center(child: Text('16')),
                    ),
                    TableCell(
                      child: Container(
                        height: 60,
                        width: 40,
                        child: Center(
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage("images/jur.jpg"),
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      // ignore: duplicate_ignore
                      // ignore: sized_box_for_whitespace
                      child: Container(
                        height: 60,
                        width: 60,
                        child: Center(child: Text('Jutnalistika')),
                      ),
                    ),
                    TableCell(
                      // ignore: duplicate_ignore
                      // ignore: sized_box_for_whitespace
                      child: Container(
                        height: 60,
                        width: 25,
                        child: Center(child: Text('5')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        height: 60,
                        width: 30,
                        child: Center(child: Text('0')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        height: 60,
                        width: 30,
                        child: Center(child: Text('0')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        height: 60,
                        width: 60,
                        child: Center(child: Text('5')),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        height: 60,
                        width: 30,
                        child:
                            Center(child: FittedBox(child: Text('5-51(-46)'))),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        height: 60,
                        width: 20,
                        child: Center(child: Text('0')),
                      ),
                    ),
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
