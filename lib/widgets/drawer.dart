import 'package:flutter/material.dart';
import 'package:meal_app/screans/taps_screen.dart';
import '../screans/filters_screen.dart';

class Drawerwidget extends StatelessWidget {

  Widget buildListTile(String title , IconData icon,BuildContext context , Function tap){
    return ListTile(
      leading: Icon(icon,size: 20,),
      title: Text(title,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        fontFamily: Theme.of(context).textTheme.bodyText1.fontFamily
      ),),
      onTap: tap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(10),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text("Cooking App!",style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
              color: Theme.of(context).primaryColor,

            ),),
          ),
          SizedBox(height: 20,),
          buildListTile("Meal" , Icons.restaurant,context,(){Navigator.of(context).pushReplacementNamed('/');}),
          buildListTile("Filters" , Icons.settings,context,(){Navigator.of(context).pushReplacementNamed(filters.routname);})

        ],
      ),
    );
  }
}
