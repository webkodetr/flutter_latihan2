import 'dart:math';

import 'package:flutter/material.dart';

class Latihan8 extends StatelessWidget {
  const Latihan8({
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
               margin: EdgeInsets.only(left: 20),
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
