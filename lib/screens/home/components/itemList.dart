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
            svgSrc: "assets/icons/burger_beer.svg",
            title: "Burger & Beer",
            press: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){return DetailsScreen(
                location: "McDonalds",
                foodname: "Cheese Burger",
                img: "assets/images/burger.png",
                cont: "Nowadays, making printed materials have become fast, easy and simple. If you want your promotional material to be an eye-catching object, you should make it colored. By way of using inkjet printer this is not hard to make. An inkjet printer is any printer that places extremely small droplets of ink onto paper to create an image.",
                );
              },
              ),
              );
            },
          ),
          ItemCard(
            svgSrc: "assets/icons/chinese_noodles.svg",
            title: "Chinese Noodles",
            press: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){return DetailsScreen(
                img: "assets/images/burger.png",
                );
              },
              ),
              );
            },
          ),
          ItemCard(
            svgSrc: "assets/icons/burger_beer.svg",
            title: "Burger & Beer",
            press: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){return DetailsScreen(
                img: "assets/images/burger.png",
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

