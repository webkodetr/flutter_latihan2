import 'dart:math';

import 'package:flutter/material.dart';

class Latihan19 extends StatelessWidget {
  const Latihan19({
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
            itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(bottom: 25),
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[300],
                        image: DecorationImage(
                          fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://picsum.photos/id/${778 + index}/800/900'))),
                    padding: EdgeInsets.all(20),
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Data ${index + 1}',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                )
              )
            );
  }
}
