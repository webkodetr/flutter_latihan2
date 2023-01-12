import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import './tab1.dart';

class LatihanTabbar extends StatefulWidget {
  const LatihanTabbar({super.key});

  @override
  State<LatihanTabbar> createState() => _LatihanTabbarState();
}

class _LatihanTabbarState extends State<LatihanTabbar> {

  static const List<Tab> _tabs = [
    const Tab(icon: Icon(Icons.looks_one), child: const Text('Satu')),
    const Tab(icon: Icon(Icons.looks_two), text: 'Dua'),
  ];

static List<Widget> _views = [
       Tab1(),
      const Center(child: const Text('tab 2')),
    ];
    
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(
                tabs: _tabs,
              ),
              title: const Text('Woolha.com Flutter Tutorial'),
              backgroundColor: Colors.teal,
            ),
            body: TabBarView(
              physics: BouncingScrollPhysics(),
              children: _views,
            ),
          ),
        );
  }
}


// class LatihanTabbar extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//           length: 2,
//           child: Scaffold(
//             appBar: AppBar(
//               bottom: TabBar(
//                 tabs: _tabs,
//               ),
//               title: const Text('Woolha.com Flutter Tutorial'),
//               backgroundColor: Colors.teal,
//             ),
//             body: const TabBarView(
//               physics: BouncingScrollPhysics(),
//               children: _views,
//             ),
//           ),
//         );
//     }
//   }
  
