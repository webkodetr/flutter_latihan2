import 'package:flutter/material.dart';

class StatelessFullWidget extends StatefulWidget {
  const StatelessFullWidget({super.key});

  @override
  State<StatelessFullWidget> createState() => _StatelessFullWidgetState();
}

class _StatelessFullWidgetState extends State<StatelessFullWidget> {
  var nilai = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$nilai',
            style: TextStyle(fontSize: 20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  nilai--;
                  setState(() {});
                },
                child: const Icon(
                  Icons.remove,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  nilai++;
                  setState(() {});
                },
                child: const Icon(
                  Icons.add,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
