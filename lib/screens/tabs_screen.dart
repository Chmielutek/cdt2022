import 'package:calle_de_timberos/main.dart';
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
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  // Widget createLanguageDropdownValue(String localeLanguageTag) {
  //   var imageDir = localeLanguageTag == 'en' ? 'assets/images/en_flag.png' : 'assets/images/pl_flag.png';
  //   return Container(
  //     height: 24,
  //     width: 32,
  //     decoration: BoxDecoration(
  //         image: DecorationImage(
  //             image: AssetImage(imageDir),
  //             fit: BoxFit.cover
  //         ),
  //         borderRadius: BorderRadius.all(Radius.circular(2))
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    // Widget languageDropdownValue = createLanguageDropdownValue(MyApp.of(context)!.getLocaleLanguageTag());
    return Scaffold(
      appBar: AppBar(
        title: Text.rich(TextSpan(
          children: [
            TextSpan(text: AppLocalizations.of(context)?.welcome),
            TextSpan(text: 'Calle ', style: TextStyle(color: Colors.red)),
            TextSpan(text: 'De ', style: TextStyle(color: Colors.white)),
            TextSpan(text: 'Timberos', style: TextStyle(color: Colors.blue))]
        )),
        actions: [
          DropdownButton(
              // value: languageDropdownValue,
            value: MyApp.of(context)?.getLocaleLanguageTag() as String,
              items: [
                DropdownMenuItem(
                    child: Container(
                      height: 24,
                      width: 32,
                      decoration: const BoxDecoration(
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
                      decoration: const BoxDecoration(
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
          )
        ],
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0,
      ),
      // drawer: MainDrawer(),
      body: _pages[_selectedPageIndex]['page'] as Widget?,
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        onTap: _selectPage,
        backgroundColor: Colors.grey,
        unselectedItemColor: Colors.white,
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
          )
        ],
      ),
    );
  }
}
