import 'package:flutter/material.dart';
import 'package:foodordering/screens/details/details_screen.dart';
import 'package:foodordering/screens/home/components/itemcard.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          ItemCard(
            svgSrc: "assets/icons/biriyani.svg",
            title: "Chicken Biriyani",
            press: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){return DetailsScreen(
                location: "Ambattur O.T",
                foodname: "Chicken Biriyani",
                img: "assets/images/IMG_4916.JPG",
                cont: "Nowadays, making printed materials have become fast, easy and simple. If you want your promotional material to be an eye-catching object, you should make it colored. By way of using inkjet printer this is not hard to make.",
                );
              },
              ),
              );
            },
          ),
          ItemCard(
            svgSrc: "assets/icons/biriyani.svg",
            title: "Mutton Biriyani",
            press: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){return DetailsScreen(
                location: "Ambattur O.T",
                foodname: "Mutton Biriyani",
                img: "assets/images/IMG_4916.JPG",
                cont: "Nowadays, making printed materials have become fast, easy and simple. If you want your promotional material to be an eye-catching object, you should make it colored. By way of using inkjet printer this is not hard to make.",
              );
              },
              ),
              );
            },
          ),
          ItemCard(
            svgSrc: "assets/icons/biriyani.svg",
            title: "Veg Biriyani",
            press: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){return DetailsScreen(
                location: "Ambattur O.T",
                foodname: "Veg Biriyani",
                img: "assets/images/IMG_4916.JPG",
                cont: "Nowadays, making printed materials have become fast, easy and simple. If you want your promotional material to be an eye-catching object, you should make it colored. By way of using inkjet printer this is not hard to make.",
              );
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

