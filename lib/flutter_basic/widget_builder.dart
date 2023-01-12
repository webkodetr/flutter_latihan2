import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_latihan2/flutter_basic/widgets/kotak_widget.dart';

class WidgetBuilder1 extends StatelessWidget {
  WidgetBuilder1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:
          // ListView.builder(
          //   itemCount: 4,
          //   itemBuilder: (context, index) => KontakWidget(
          //     text: 'Warna ke-${index + 1}',
          //     warna: Color.fromARGB(
          //       255,
          //       Random().nextInt(256),
          //       Random().nextInt(256),
          //       Random().nextInt(256),
          //     ),
          //   ),
          // ),

        GridView.builder(
        itemCount: 100,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemBuilder: (context, index) => KontakWidget(
          text: 'Warna ke-${index + 1}',
          warna: Color.fromARGB(
            255,
            Random().nextInt(256),
            Random().nextInt(256),
            Random().nextInt(256),
          ),
        ),
      ),
    );
  }
}
