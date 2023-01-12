import 'package:flutter/material.dart';

class Latihan3 extends StatelessWidget {
  const Latihan3({
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
          child: FlutterLogo(size: 150,)),
    );
  }
}
