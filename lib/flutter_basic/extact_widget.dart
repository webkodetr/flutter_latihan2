import 'package:flutter/material.dart';
import 'package:flutter_latihan2/flutter_basic/widgets/kotak_widget.dart';

class ExtractWidget extends StatelessWidget {
  const ExtractWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            KontakWidget(text: 'merah', warna: Colors.red),
            KontakWidget(text: 'Hijau', warna: Colors.green),
          ],
        ),
      ),
    );
  }
}

