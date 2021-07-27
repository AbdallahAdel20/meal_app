import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../screans/categ_item_screen.dart';
/*
الصفحة دي عبارة عن الويدجت بتاعة الوجبة اللي المفروض تتعرض في صفحة الوجبات اللي هي الصفحة الرئيسئية
 */



class Categitem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

   Categitem(this.id, this.title, this.color);

  void selectitem(BuildContext ctx){
    Navigator.of(ctx).pushNamed(
        Categitemscreen.routeName,
        arguments: {
          'id' : id,
          'title' : title
    },
    );

  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=> selectitem(context),
      child: Container(
        child: Text(title,style: Theme.of(context).textTheme.title,),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              color,
              color.withOpacity(0.5)
            ]
          )
        ),
      ),
    );

  }
}
