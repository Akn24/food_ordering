import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodordering/screens/feedback/feedback.dart';
import 'package:foodordering/screens/home/home-screen.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35),
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -7),
            blurRadius: 33,
            color: Color(0xFF6DAED9).withOpacity(0.11),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/home.svg"),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context){
                    return HomeScreen();
                  },
                ),
              );
            },
          ),
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/Following.svg"),
            onPressed: (){},
          ),
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/Glyph.svg"),
            onPressed: (){},
          ),
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/person.svg"),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context){
                    return UI22();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}