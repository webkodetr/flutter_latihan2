import 'dart:math';

import 'package:flutter/material.dart';

class Latihan17 extends StatelessWidget {
  const Latihan17({
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
        body: GridView.builder(
            itemCount: 50,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 10, crossAxisSpacing: 10, crossAxisCount: 3),
            itemBuilder: (context, index) {
              if (index % 2 == 0) {
                return Container(
                  width: 150,
                  height: 150,
                  color: Colors.amber,
                  child: Center(
                    child: Text(
                      'Hello',
                      style: TextStyle(fontSize: 25, color: Colors.black),
                    ),
                  ),
                );
              } else {
                return Container(
                  width: 150,
                  height: 150,
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      'Hello',
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                );
              }
            }));
  }
}
