import 'dart:math';

import 'package:flutter/material.dart';

class Latihan18 extends StatelessWidget {
  const Latihan18({
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
        body: ListView.builder(
            padding: EdgeInsets.all(10),
            itemCount: 50,
            itemBuilder: (context, index) {
              if (index % 2 == 0) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 150,
                        color: Colors.amber,
                      ),
                      SizedBox(height: 10,),
                      Text('Data ${index + 1}', style: TextStyle(fontSize: 25),)
                    ],
                  ),
                );
              } else {
                return Padding(
                 padding: const EdgeInsets.only(bottom: 25),
                  child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 150,
                        color: Colors.blue,
                      ),
                       SizedBox(height: 10,),
                      Text('Data ${index + 1}', style: TextStyle(fontSize: 25),)
                    ],
                  ),
                );
              }
            }));
  }
}
