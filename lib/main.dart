import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/favorites.dart';
import 'screens/about_us_screen.dart';
import 'screens/location_details_screen.dart';
import 'screens/tabs_screen.dart';
import 'screens/splash_screen.dart';

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
          // backgroundColor: Color(4282434815),
            // backgroundColor: Colors.white,
          canvasColor: Theme.of(context).backgroundColor,
            // canvasColor: Colors.white,
          focusColor: Colors.redAccent
        ),
        initialRoute: '/',
        home: SplashScreen(2, TabsScreen.routeName),
        routes: {
          TabsScreen.routeName: (ctx) => TabsScreen(),
          AboutUsScreen.routeName: (ctx) => AboutUsScreen(),
          LocationDetailsScreen.routeName: (ctx) => LocationDetailsScreen()
        },
      ),
    );
  }
}
