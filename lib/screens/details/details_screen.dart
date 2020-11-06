import 'package:flutter/material.dart';
import 'package:foodordering/constants.dart';
import 'package:foodordering/screens/details/components/app_bar.dart';
import 'package:foodordering/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final String img,cont,location,foodname;

  const DetailsScreen({Key key, this.img, this.cont, this.location, this.foodname}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppBar(context),
      body: Body(imgs: img,content: cont, loc: location, food: foodname,),
    );
  }
}
