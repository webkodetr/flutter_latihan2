import 'package:flutter/material.dart';

class WidgetDasar extends StatelessWidget {
  const WidgetDasar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.red[900],
        leading: Icon(Icons.home),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      // body: Center(
      // child: Text('Hello World'),
      // child: Container(
      //   width: 200,
      //   height: 200,
      //   color: Colors.amber,
      //   child: Text('Hello kawan'),
      // ),
      // ),

      body: Center(
        // child: FlutterLogo(
        //   size: 200,
        // ),
        // child: ElevatedButton(
        //   onPressed: () {
        //     print('hello');
        //   },
        //   child: Text('Submit'),
        // ),

        // child: Icon(Icons.home, size: 200, color: Colors.red[900],),

        // child: Image(
          // Image provider
          // 1. asset Image -> gambar yang ada dalam project
          // image: AssetImage('assets/sincan.jpg'), 
          // 2. Network image
          // image:NetworkImage('https://picsum.photos/id/237/200/300') ,
          // 3. file image
          // image: FileImage(file),
          // 4. memory image
          // image: MemoryImage(bytes),
        // ),

        // cara cepat menampilkan image
        child: Image.network('https://picsum.photos/id/237/200/300'),
      ),
    );
  }
}
