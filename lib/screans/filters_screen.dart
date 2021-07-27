import 'package:flutter/material.dart';
import 'package:meal_app/widgets/drawer.dart';

class filters extends StatelessWidget {
  static const routname = 'filters';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("your filters"),),
      body: Center(
        child: Text("kjldwf"),
      ),
      drawer: Drawerwidget(),
    );
  }
}
