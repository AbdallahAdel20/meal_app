/*
هنا الصفحة اللي فيها اعدادت الويدجت بتاعة كل وجبة في الكاتيجوري المعينة اللي دوست عليها
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_app/screans/meal_details_screen.dart';
import '../modules/meals.dart';

class Mealitem extends StatelessWidget {
  final String id;
  final String imageurl;
  final String title;
  final Complexity complexity;
  final Affordability affordability;
  final int duration;

  const Mealitem({
    @required this.id,
    @required this.imageurl,
    @required this.title,
    @required this.complexity,
    @required this.affordability,
    @required this.duration,
  });

  String get complexitytext{
    switch(complexity){
      case Complexity.Simple: return 'Simple';break;
      case Complexity.Challenging : return 'Challenging';break;
      case Complexity.Hard : return 'Hard';break;
      default :return 'Unknown';break;
    }
  }
  String get affordabilitytext{
    switch(affordability){
      case Affordability.Affordable: return 'Affordable';break;
      case Affordability.Luxurious: return 'Luxurious';break;
      case Affordability.Pricey: return 'Pricey';break;
      default :return 'Unknown';break;
    }
  }

  void selectmeal(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(Mealdetails.routeName,
    arguments: id);

  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>selectmeal(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(5),
        child: Column(children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                child: Image.network(imageurl),
              ),
              Positioned(
                right: 20,
                bottom: 10,
                child: Container(
                  width: 220,
                  color: Colors.black54,
                  padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                  child: Text(
                    title,
                    style: TextStyle(fontSize: 26, color: Colors.white),
                    softWrap: true,
                    overflow: TextOverflow.fade,
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Icon(Icons.access_alarm),
                    Text("$duration min"),
                  ],

                ),
                Row(
                  children: [
                    Icon(Icons.work),
                    Text(complexitytext),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.attach_money),
                    Text(affordabilitytext),
                  ],
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
