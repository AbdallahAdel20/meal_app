import 'package:flutter/material.dart';
import 'package:meal_app/screans/meal_details_screen.dart';
import 'screans/filters_screen.dart';
import 'screans/category_screen.dart';
import 'screans/categ_item_screen.dart';
import 'screans/taps_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<int, Color> color =
  {
    50:Color.fromRGBO(255,80,80, .1),
    100:Color.fromRGBO(255,80,80, .2),
    200:Color.fromRGBO(255,80,80, .3),
    300:Color.fromRGBO(255,80,80, .4),
    400:Color.fromRGBO(255,80,80, .5),
    500:Color.fromRGBO(255,80,80, .6),
    600:Color.fromRGBO(255,80,80, .7),
    700:Color.fromRGBO(255,80,80, .8),
    800:Color.fromRGBO(255,80,80, .9),
    900:Color.fromRGBO(255,80,80, 1),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch : MaterialColor(0xFF880E4F,color),
        accentColor: Colors.amber,
        canvasColor: Colors.white,
        textTheme: ThemeData.light().textTheme.copyWith(
          body1: TextStyle(
            color:Color.fromRGBO(20, 50, 50, 1)
          ),
          body2: TextStyle(
            color:Color.fromRGBO(20, 50, 50, 1)
          ),
          title: TextStyle(
            fontSize: 24,
            fontFamily: 'RobotoCondensed'
          )

        )


      ),
      // home: CatigoScreen(),
      routes: {
        '/':(context) => tapsscreen(),
        Categitemscreen.routeName : (context) => Categitemscreen(),
        Mealdetails.routeName : (context) => Mealdetails(),
        filters.routname : (context) => filters(),
      },
    );
  }
}


