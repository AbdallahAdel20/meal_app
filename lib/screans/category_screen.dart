import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_app/widgets/Categitem.dart';
import '../1.1 dummy_data.dart';
/*
هنا بقى دي الصفحة الرئيسية وبتستقبل ويدحت من صفحة الويدجت بتاعة والوجبات عن طريقة ان احنا بنعمل دالة ماب
بتحول كل عنصر في الليست بتااعة الcategories الى ويدجت
 */
class CatigoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: GridView(
        padding: EdgeInsets.all(10),
        children: DUMMY_CATEGORIES.map((e)=>
        Categitem(e.id , e.title ,e.color)
        ).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 1,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
