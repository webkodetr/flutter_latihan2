import 'package:flutter/material.dart';
import 'package:flutter_latihan2/latihan1/format_uang.dart';
import 'package:flutter_latihan2/latihan1/m_barang.dart';
import 'package:intl/intl.dart';

class LatihanArray extends StatefulWidget {
  @override
  State<LatihanArray> createState() => _LatihanArrayState();
}

class _LatihanArrayState extends State<LatihanArray> {
  late List<Barang> data;
  double totalBayar = 0;

  var _formKey = GlobalKey<FormState>();
  TextEditingController _idController = TextEditingController();
  TextEditingController _namaController = TextEditingController();
  TextEditingController _hargaController = TextEditingController();

  @override
  initState() {
    super.initState();
    data = <Barang>[];
  }

  Future<void> _displayTextInputDialog(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Inputan Data'),
          content: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _idController,
                  decoration: InputDecoration(hintText: "Masukan Id?"),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'ID masih kosong!';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _namaController,
                  decoration: InputDecoration(hintText: "Masukan Nama Barang?"),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Nama masih kosong!';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _hargaController,
                  decoration:
                      InputDecoration(hintText: "Masukan Harga Barang?"),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Harga masih kosong!';
                    }
                    return null;
                  },
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('CANCEL'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            TextButton(
              child: Text('SAVE'),
              onPressed: () {
                print(_namaController.text);

                _validasiSubmit();
              },
            ),
          ],
        );
      },
    );
  }

  void _validasiSubmit() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }

    saveData();
    _formKey.currentState!.save();
  }

  void saveData() {
    setState(() {
      int idValue = int.parse(_idController.text);
      String namaValue = _namaController.text;
      double hargaValue = double.parse(_hargaController.text);

      if (data.map((item) => item.id).contains(idValue)) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("Data sudah ada"),
        ));
      } else {
        data.add(
            Barang(id: idValue, nama: namaValue, harga: hargaValue, qty: 1));
        Navigator.pop(context);
      }
    });
  }

  double totalHarga() {
    double total = 0;
    data.forEach((x) {
      total += x.qty * x.harga;
    });
    return total;
  }

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
                  _displayTextInputDialog(context);
                },
                icon: Icon(Icons.more_vert))
          ],
        ),
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            children: [
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.all(8),
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                        '${data[index].id}.${data[index].nama} ( ${FormatUang.convertToIdr(data[index].harga, 0)} )'),
                    subtitle: Text(
                        '${FormatUang.convertToIdr(data[index].qty * data[index].harga, 0)}'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        IconButton(
                            onPressed: () {
                              setState(() {
                                if (data[index].qty > 1) {
                                  data[index].qty--;
                                } else {
                                  data.removeAt(index); // remove
                                }
                              });
                            },
                            icon: Icon(Icons.remove)),
                        const SizedBox(width: 15),
                        Text('${data[index].qty}'),
                        const SizedBox(width: 15),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                data[index].qty++;
                              });
                            },
                            icon: Icon(Icons.add)),
                      ],
                    ),
                  );
                },
              ),
              Text('${FormatUang.convertToIdr(totalHarga(), 0)}')
            ],
          ),
        ));
  }
}
