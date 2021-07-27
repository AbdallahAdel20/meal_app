import 'package:flutter/material.dart';
import '../widgets/drawer.dart';
import 'category_screen.dart';
import 'favorits.dart';

class tapsscreen extends StatefulWidget {
  @override
  _tapsscreenState createState() => _tapsscreenState();
}

class _tapsscreenState extends State<tapsscreen> {

  final List<Map<String,Object>> _pages = [
    {
      'page': CatigoScreen(),
      'title' : 'Categories'
    },
    {
      'page': favorites(),
      'title' : 'your Favorite'
    }
    ];


  int _selectedPageindex =0 ;
  void _selectPage(int value){
    setState(() {
      _selectedPageindex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageindex]['title']),
      ),
      body: _pages[_selectedPageindex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.white,
        currentIndex: _selectedPageindex,
        backgroundColor: Theme.of(context).primaryColor,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category) ,
            title: Text("categories")),
          BottomNavigationBarItem(
              icon: Icon(Icons.star) ,
              title: Text("favorite")),
        ],
      ),
      drawer: Drawerwidget(),
    );
  }
}
