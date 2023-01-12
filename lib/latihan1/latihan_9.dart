import 'dart:math';

import 'package:flutter/material.dart';

class Latihan9 extends StatelessWidget {
  const Latihan9({
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
        body: Row(
          mainAxisAlignment: MainAxisAlignment.end, // horizontal
          // crossAxisAlignment: CrossAxisAlignment.end, // vertical
          children: [
            Container(
              // margin: EdgeInsets.only(right: 20),
              width: 150,
              height: 150,
              color: Colors.blue,
              child: Center(
                child: Text(
                  'Hello',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
            ),
            Container(
               margin: EdgeInsets.only(left: 10),
              width: 150,
              height: 150,
              color: Colors.yellow,
              child: Center(
                child: Text(
                  'Hello',
                  style: TextStyle(fontSize: 25, color: Colors.black),
                ),
              ),
            ),
          ],
        ));
  }
}
