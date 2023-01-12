import 'dart:math';

import 'package:flutter/material.dart';

class Latihan4 extends StatelessWidget {
  const Latihan4({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TEXT JUDUL'),
        backgroundColor: Colors.blue,
        leading: Icon(Icons.home),
        actions: [
          IconButton(
              onPressed: () {
                print('Test');
              },
              icon: Icon(Icons.more_vert))
        ],
      ),
      body: Center(
          child: Transform.rotate(
        child: FlutterLogo(
          size: 150,
        ),
        angle: pi / (180 / 90), // 90 derajat
      )),
    );
  }
}
