import 'package:calle_de_timberos/screens/class_day_screen.dart';
import 'package:calle_de_timberos/screens/favorites_screen.dart';
import 'package:flutter/material.dart';

import 'screens/classes_screen.dart';
import 'screens/about_us_screen.dart';
import 'screens/locations_screen.dart';
import 'screens/tabs_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.amberAccent,
        canvasColor: Theme.of(context).backgroundColor,
          // canvasColor: Colors.white,
        focusColor: Colors.redAccent
      ),
      initialRoute: '/',
      routes: {
        '/': (ctx) => TabsScreen(),
        ClassesScreen.routeName: (ctx) => ClassesScreen(),
        FavoritesScreen.routeName: (ctx) => FavoritesScreen(),
        LocationsScreen.routeName: (ctx) => LocationsScreen(),
        AboutUsScreen.routeName: (ctx) => AboutUsScreen(),
        ClassDayScreen.routeName: (ctx) => ClassDayScreen()
      },
    );
  }
}
