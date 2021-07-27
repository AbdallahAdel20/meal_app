import 'package:flutter/material.dart';
import '../widgets/mealsofitem.dart';
import '../1.1 dummy_data.dart';
/*
هنا بقى الصفحة بتاعة كل ايتمم من الصفحة الرئيسية اللي هيا انواع الاكل
 */
class Categitemscreen extends StatefulWidget {
  static const routeName = 'categ_meals';
  @override
  _CategitemscreenState createState() => _CategitemscreenState();
}

class _CategitemscreenState extends State<Categitemscreen> {
  @override
  Widget build(BuildContext context) {
    final routearg = ModalRoute.of(context).settings.arguments as Map<String,String>;
    final itemid = routearg['id'];
    final itemtitle = routearg['title'];

    final itemmeal = DUMMY_MEALS.where((meal)  {
      //هنا بنعمل ليست ناتجة من فانكشن بتعمل فلترة للقائمة الوجبات اللي ملف الموديول

      return meal.categories.contains(itemid);
    }).toList();



    return Scaffold(
      appBar: AppBar(
        title: Text(itemtitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx,index){
          return Mealitem(
            id : itemmeal[index].id,
            imageurl : itemmeal[index].imageUrl,
            title: itemmeal[index].title,
            duration: itemmeal[index].duration,
            affordability: itemmeal[index].affordability,
            complexity: itemmeal[index].complexity,
          );
        },
        itemCount: itemmeal.length,
        
      ),
    );
  }
}
