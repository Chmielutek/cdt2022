import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/favorites.dart';
import 'screens/about_us_screen.dart';
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
    return ChangeNotifierProvider.value(
      value: Favorites(),
      child: MaterialApp(
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
          AboutUsScreen.routeName: (ctx) => AboutUsScreen()
        },
      ),
    );
  }
}
