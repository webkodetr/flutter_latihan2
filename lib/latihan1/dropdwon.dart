import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import './tab1.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:dio/dio.dart';
import './user_model.dart';

class LatihanDropDown extends StatefulWidget {
  const LatihanDropDown({super.key});

  @override
  State<LatihanDropDown> createState() => _LatihanDropDownState();
}

class _LatihanDropDownState extends State<LatihanDropDown> {

  Future<List<UserModel>> getData(filter) async {
    var response = await Dio().get(
      "https://5d85ccfb1e61af001471bf60.mockapi.io/user",
      queryParameters: {"filter": filter},
    );

    final data = response.data;
    if (data != null) {
      return UserModel.fromJsonList(data);
    }

    return [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: DropdownSearch<UserModel>(
        asyncItems: (filter) => getData(filter),
        compareFn: (i, s) => i.isEqual(s),
        popupProps: PopupPropsMultiSelection.modalBottomSheet(
          isFilterOnline: true,
          showSelectedItems: true,
          showSearchBox: true,
//        itemBuilder: _customPopupItemBuilderExample2,
          favoriteItemProps: FavoriteItemProps(
            showFavoriteItems: true,
            favoriteItems: (us) {
              return us.where((e) => e.name.contains("Mrs")).toList();
            },
          ),
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
  
