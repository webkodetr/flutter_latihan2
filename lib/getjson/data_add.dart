import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_latihan2/getjson/biodata.dart';
import 'package:http/http.dart' as http;

class UserPage extends StatefulWidget {
  
  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {

  Future saveToMysql(List<Biodata> list) async {
    for (var i = 0; i < list.length; i++) {
      Map<String, dynamic> data = {
        "nama": list[i].getNama,
        "tanggal": list[i].getTanggal,
      };

      final response = await http.post(
          Uri.parse('http://192.168.88.249/biodata/insertdata.php'),
          body: json.encode(data));

      if (response.statusCode == 200) {
        print("berhasil disimpan");
      } else {
        print(response.statusCode);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Biodata1"),
      ),
      body: TextButton(
        child: const Text("Simpan"),
        onPressed: () {
          List<Biodata> list = [
            
          ];

          Biodata bi1 = Biodata();
          bi1.setNama = 'ahmad';
          bi1.setTanggal = '2022-12-1';
          Biodata bi2 = Biodata();
          bi2.setNama = 'rahmad';
          bi2.setTanggal = '2022-11-2';
          Biodata bi3 = Biodata();
          bi3.setNama = 'puji';
          bi3.setTanggal = '2022-10-3';

          list.add(bi1);
          list.add(bi2);
          list.add(bi3);

          saveToMysql(list);
        },
      ),
    );
  }
}
