import 'package:flutter/material.dart';
import 'package:foodordering/constants.dart';
import 'package:foodordering/screens/details/components/itemimage.dart';
import 'package:foodordering/screens/details/components/order.dart';
import 'package:foodordering/screens/details/components/titlepagerating.dart';

class Body extends StatelessWidget {
  final String imgs,content,loc,food;

  const Body({Key key, this.imgs, this.content, this.loc, this.food}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ItemImage(
          imgSrc: imgs,
        ),
        Expanded(
          child: ItemInfo(txt: content,location: loc, foodname: food,),
        ),
      ],
    );
  }
}

class ItemInfo extends StatelessWidget {
  final String txt,location,foodname;
  const ItemInfo({
    Key key, this.txt, this.location, this.foodname,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          children: <Widget>[
            shopeName(name: location),
            TitlePriceRating(
              name: foodname,
              numOfReviews: 24,
              rating: 4,
              price: 199,
              //onRatingChanged: (value) {},
            ),
            Text(
              txt,
              style: TextStyle(
                height: 1.5,
              ),
            ),
            SizedBox(height: size.height * 0.01),
            OrderButton(
              size: size,
              press: () {},
            )
          ],
        ),
      ),
    );
  }

  Row shopeName({String name}) {
    return Row(
      children: <Widget>[
        Icon(
          Icons.location_on,
          color: ksecondaryColor,
        ),
        SizedBox(width: 10),
        Text(name),
      ],
    );
  }
}