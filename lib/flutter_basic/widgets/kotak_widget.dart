import 'package:flutter/material.dart';

class KontakWidget extends StatelessWidget {
  const KontakWidget({
    Key? key,
    required this.text,
    required this.warna,
  }) : super(key: key);

  final String text;
  final Color warna;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 100,
      height: 200,
      color: warna,
      child: Center(
        child: Text(text),
      ),
    );
  }
}
