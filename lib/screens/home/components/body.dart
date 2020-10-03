import 'package:flutter/material.dart';
import 'package:foodordering/components/search_box.dart';
import 'package:foodordering/screens/home/components/categoryList.dart';
import 'package:foodordering/screens/home/components/discount_card.dart';
import 'package:foodordering/screens/home/components/itemList.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
        child: Column(
        children: <Widget>[
          SearchBox(
            onChanged: (value){},
          ),
          CategoryList(),
          ItemList(),
          Discount(),
        ],
      ),
    );
  }
}

