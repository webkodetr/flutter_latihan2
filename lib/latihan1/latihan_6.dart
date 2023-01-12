import 'dart:math';

import 'package:flutter/material.dart';

class Latihan6 extends StatelessWidget {
  const Latihan6({
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
        // TODO: menggunakan clipoval

        //     child: ClipOval(
        //       child: Container(
        //         color: Colors.blue,
        //         width: 250,
        //         height: 250,
        //         child: Center(
        //           child: Text(
        //           'Hello',
        //           style: TextStyle(
        //             color: Colors.white,
        //             fontSize: 50,
        //             decoration: TextDecoration.underline,
        //             fontWeight: FontWeight.bold),
        //       )
        //     ),
        //   ),
        // )

        // TODO: menggunakan BoxDecoration

        child: Container(
          width: 250,
          height: 250,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(250 / 2)),
          child: Center(
              child: Text(
              'Hello',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.bold),
            )),
        ),

        // child: ClipOval(
        //   child: Image(
        //     image: NetworkImage("https://picsum.photos/seed/picsum/200/300"),
        //     )),
        
      ),
    );
  }
}
