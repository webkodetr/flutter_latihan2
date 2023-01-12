import 'package:flutter/material.dart';
import 'package:flutter_latihan2/flutter_basic/extact_widget.dart';
import 'package:flutter_latihan2/flutter_basic/grideview_test.dart';
import 'package:flutter_latihan2/flutter_basic/mapping_collection.dart';
import 'package:flutter_latihan2/flutter_basic/widget_builder.dart';
import 'package:flutter_latihan2/getjson/data_add.dart';
import 'package:flutter_latihan2/stateless_statefull/stateless_statefulle.dart';

void main() {
  runApp(const MyAPP());
}

class MyAPP extends StatelessWidget {
  const MyAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StatelessFullWidget(),
    );
  }
}

