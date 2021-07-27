import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_app/1.1 dummy_data.dart';

class Mealdetails extends StatelessWidget {
  static const routeName = 'meal_detail';

  Widget buildtitle(BuildContext context, String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(text, style: Theme.of(context).textTheme.title),
    );
  }

  Widget buildcontent(Widget child) {
    return Container(height: 150, width: 300, child: child);
  }

  @override
  Widget build(BuildContext context) {
    final mealid = ModalRoute.of(context).settings.arguments as String;
    final selectedmeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealid);
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedmeal.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                selectedmeal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            buildtitle(context, "ingradiants"),
            buildcontent(ListView.builder(
                  itemBuilder: (ctx, index) => Card(
                        color: Colors.amber,
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                          child: Text(selectedmeal.ingredients[index]),
                        ),
                      ),
                  itemCount: selectedmeal.ingredients.length),),
            buildtitle(context, "steps"),
            buildcontent(ListView.builder (
                itemBuilder: (ctx, index) => Card(
                  color: Colors.amber,
                  child: Padding(
                    padding:
                    EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Text(selectedmeal.steps[index]),
                  ),
                ),
                itemCount: selectedmeal.steps.length),)
          ],
        ),
      ),
    );
  }
}
