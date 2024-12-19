import 'package:flutter/material.dart';
import 'package:pertemuan5/LAYOUT/HOME/PostNews.dart';
import 'package:pertemuan5/LAYOUT/HOME/newspage.dart';
import 'ListViewLearning.dart';
import 'GridviewLearning.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>{
  int _currentIndex=0;

  final List<Widget> _tabs = [
    Newspage(),
    GridViewLearning(),
    ListsWithCards(),
    Postnews(),
  ];
  final List<String> _titles = [
    'Home',
    'Grid View',
    'List View',
    'Post Data',
  ];
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text(_titles[_currentIndex]),
    ),
    body: _tabs[_currentIndex],
    bottomNavigationBar: BottomNavigationBar(
      currentIndex: _currentIndex,
      selectedItemColor: Colors.cyan,
      unselectedItemColor: Colors.redAccent,
      onTap: (int index) {
        setState(() {
          _currentIndex=index;
        });
      },
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label:'Home',
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.grid_3x3),
            label: 'GridView',
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'ListView',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.post_add),
          label: 'Post Data',
        ),
      ],
    ),
  );
 }
}