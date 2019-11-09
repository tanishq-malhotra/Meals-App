import 'package:flutter/material.dart';

import './catergories_screen.dart';
import './favourite_screen.dart';
import '../widgets/main_drawer.dart';

class TabsScreens extends StatefulWidget {
  @override
  _TabsScreensState createState() => _TabsScreensState();
}

class _TabsScreensState extends State<TabsScreens> {
  final List<Map<String, Object>> _pages = [
    {'page': CategoriesScreen(), 'title': 'Categories'},
    {'page': FavouriteScreen(), 'title': 'Your Favorite'},
  ];
  int _pageIndex = 0;

  void _selectTab(int index) {
    setState(() {
      _pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_pageIndex]['title']),
      ),
      drawer: MainDrawer(),
      body: _pages[_pageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectTab,
        backgroundColor: Theme.of(context).primaryColor,
        currentIndex: _pageIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.category,
            ),
            title: Text('Category'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.star,
            ),
            title: Text('Favourite'),
          ),
        ],
      ),
    );
  }
}
