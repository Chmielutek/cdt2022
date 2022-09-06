import 'package:calle_de_timberos/main.dart';
import 'package:calle_de_timberos/screens/information_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_locatizations.dart';

import 'locations_screen.dart';
import 'classes_screen.dart';
import '../screens/favorites_screen.dart';

class TabsScreen extends StatefulWidget {
  static String routeName = '/tabs';

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
      {
        'page': InformationScreen(),
        'title': 'Info'
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
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[Colors.red, Colors.white, Colors.white, Colors.blue]),
          ),
        ),
        title: Text.rich(TextSpan(
          children: [
            TextSpan(text: AppLocalizations.of(context)?.welcome, style: TextStyle(color: Colors.black87)),
            TextSpan(text: 'Calle ', style: TextStyle(color: Colors.red)),
            TextSpan(text: 'De ', style: TextStyle(color: Colors.black87)),
            TextSpan(text: 'Timberos', style: TextStyle(color: Colors.blue))]
        )),
        actions: [
          LanguageDropdownButton(),
        ],
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0,
      ),
      // drawer: MainDrawer(),
      body: _pages[_selectedPageIndex]['page'] as Widget?,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        onTap: _selectPage,
        backgroundColor: Colors.transparent,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Theme.of(context).focusColor,
        currentIndex: _selectedPageIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: AppLocalizations.of(context)?.classes as String
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.pin_drop_outlined),
              label: AppLocalizations.of(context)?.locations as String
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: AppLocalizations.of(context)?.favorites as String
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.info_outline_rounded),
              label: AppLocalizations.of(context)?.information as String
          )
        ],
      ),
    );
  }
}

class LanguageDropdownButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
        value: MyApp.of(context)?.getLocaleLanguageTag() as String,
        alignment: Alignment.center,
        items: [
          DropdownMenuItem(
            child: Container(
              height: 24,
              width: 32,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black87),
                  image: DecorationImage(
                      image: AssetImage('assets/images/en_flag.png'),
                      fit: BoxFit.cover
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(2))
              ),
            ),
            value: 'en',
          ),
          DropdownMenuItem(
            child: Container(
              height: 24,
              width: 32,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black87),
                  image: DecorationImage(
                      image: AssetImage('assets/images/pl_flag.png'),
                      fit: BoxFit.cover
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(2))
              ),
            ),
            value: 'pl',
          ),
        ],
        onChanged: (value) {
          MyApp.of(context)?.setLocale(Locale(value as String, ''));
        }
    );
  }
}

