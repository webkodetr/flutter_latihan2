import 'dart:math';

import 'package:flutter/material.dart';

class Latihan5 extends StatelessWidget {
  const Latihan5({
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
          child: Container(
        color: Colors.blue,
        width: 250,
        height: 250,
        child: Center(
            child: Text(
          'Hello',
          style: TextStyle(
              color: Colors.white,
              fontSize: 50,
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.bold),
        )),
      )),
    );
  }
}
