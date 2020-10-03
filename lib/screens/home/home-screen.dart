import 'package:flutter/material.dart';
import 'package:foodordering/components/bottomnav.dart';
import 'components/appbar.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      bottomNavigationBar: BottomNav(),
      body: Body(),
    );
  }
}

