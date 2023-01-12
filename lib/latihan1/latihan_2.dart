import 'package:flutter/material.dart';

class Latihan2 extends StatelessWidget {
  const Latihan2({
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
          child: Text(
        'HELLO WORLD',
        style: TextStyle(
            fontSize: 20, 
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline
          ),
      )),
    );
  }
}
