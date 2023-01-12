import 'dart:math';

import 'package:flutter/material.dart';

class Latihan7 extends StatelessWidget {
  const Latihan7({
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
            // SizedBox(
            //   width: 20,
            // ),
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
