import 'package:calle_de_timberos/screens/favorites_screen.dart';
import 'package:flutter/material.dart';

import 'locations_screen.dart';
import 'classes_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  late List<Map<String, Object>> _pages;

  int _selectedPageIndex = 0;


  @override
  void initState() {
    _pages = [
      {
        'page': ClassesScreen(),
        'title': 'Classes'
      },
      {
        'page': LocationsScreen(),
        'title': 'Locations'
      },
      {
        'page': FavoritesScreen(),
        'title': 'Classes'
      },
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text.rich(TextSpan(
          children: [
            TextSpan(text: 'Welcome to '),
            TextSpan(text: 'Calle ', style: TextStyle(color: Colors.red)),
            TextSpan(text: 'De ', style: TextStyle(color: Colors.white)),
            TextSpan(text: 'Timberos', style: TextStyle(color: Colors.blue))]
        )),
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0,
      ),
      // drawer: MainDrawer(),
      body: _pages[_selectedPageIndex]['page'] as Widget?,
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        onTap: _selectPage,
        backgroundColor: Theme.of(context).backgroundColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).focusColor,
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: 'Classes'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.pin_drop_outlined),
              label: 'Locations'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorites'
          )
        ],
      ),
    );
  }
}
