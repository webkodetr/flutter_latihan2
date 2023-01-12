import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_latihan2/flutter_basic/widgets/kotak_widget.dart';

class MappingCollection extends StatelessWidget {
  MappingCollection({super.key});

  // List<KontakWidget> listItems = List.generate(
  //   20,
  //   (index) => KontakWidget(
  //     text: 'Kotak - ${index + 1}',
  //     warna: Color.fromARGB(
  //       255,
  //       200 + Random().nextInt(256),
  //       200 + Random().nextInt(256),
  //       200 + Random().nextInt(256),
  //     ),
  //   ),
  // );

  List<Map<String, dynamic>> data = List.generate(
      10,
      (index) => {
            "text": "Kontak - ${index + 1}",
            "warna": Color.fromARGB(
              255,
              200 + Random().nextInt(256),
              200 + Random().nextInt(256),
              200 + Random().nextInt(256),
            ),
          });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: data
              .map(
                (e) => KontakWidget(
                  text: e['text'],
                  warna: e['warna'],
                ),
              ).toList(),
        ),
      ),
    );
  }
}
