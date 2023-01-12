import 'package:flutter/material.dart';
import 'package:textfield_search/textfield_search.dart';
import 'dart:async';

class LatihanSearch extends StatefulWidget {
  const LatihanSearch({super.key});

  @override
  State<LatihanSearch> createState() => _LatihanSearchState();
}

class _LatihanSearchState extends State<LatihanSearch> {

  TextEditingController myController = TextEditingController();

  @override
  void initState() {
    super.initState();
    myController.addListener(_printLatestValue);
  }

  _printLatestValue() {
    print("text field: ${myController.text}");
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    myController.dispose();
    super.dispose();
  }

  // mocking a future
  // Future<List> fetchSimpleData() async {
  //   await Future.delayed(Duration(milliseconds: 2000));
  //   List _list = <dynamic>[];
  //   // create a list from the text input of three items
  //   // to mock a list of items from an http call
  //   _list.add('Test' + ' Item 1');
  //   _list.add('Test' + ' Item 2');
  //   _list.add('Test' + ' Item 3');
  //   return _list;
  // }

  // mocking a future that returns List of Objects
  Future<List> fetchComplexData() async {
    await Future.delayed(Duration(milliseconds: 1000));
    List _list = <dynamic>[];
    List _jsonList = [
      {'label': 'Text' + ' Item 1', 'value': 30},
      {'label': 'Text' + ' Item 2', 'value': 31},
      {'label': 'Text' + ' Item 3', 'value': 32},
    ];
    // create a list from the text input of three items
    // to mock a list of items from an http call where
    // the label is what is seen in the textfield and something like an
    // ID is the selected value
    _list.add(new TestItem.fromJson(_jsonList[0]));
    _list.add(new TestItem.fromJson(_jsonList[1]));
    _list.add(new TestItem.fromJson(_jsonList[2]));

    return _list;
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Search'),
          backgroundColor: Colors.teal,
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Form(
            child: ListView(
              children: [
                SizedBox(height: 16),
                TextFieldSearch(
                label: 'Complex Future List',
                controller: myController,
                future: () {
                  return fetchComplexData();
                },
                getSelectedValue: (item) {
                  print(item);
                },
                minStringLength: 5,
                textStyle: TextStyle(color: Colors.red),
                decoration: InputDecoration(hintText: 'Search For Something'),
              ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Mock Test Item Class
class TestItem {
  final String label;
  dynamic value;

  TestItem({required this.label, this.value});

  factory TestItem.fromJson(Map<String, dynamic> json) {
    return TestItem(label: json['label'], value: json['value']);
  }
}
