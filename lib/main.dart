import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_locatizations.dart';

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

  static _MyAppState? of(BuildContext context) => context.findAncestorStateOfType<_MyAppState>();
}

class _MyAppState extends State<MyApp> {
  Locale _locale = Locale('en', '');

  String getLocaleLanguageTag() {
    return _locale.languageCode;
  }

  void setLocale(Locale value) {
    setState(() {
      _locale = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: Favorites(),
      child: MaterialApp(
        supportedLocales: const [
          Locale('pl', ''),
          Locale('en', '')
        ],
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          AppLocalizations.delegate
        ],
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Lato',
          primarySwatch: Colors.blue,
          accentColor: Colors.amberAccent,
          // backgroundColor: Color(4282434815),
            // backgroundColor: Colors.white,
          // canvasColor: Theme.of(context).backgroundColor,
            canvasColor: Colors.white,
          focusColor: Colors.redAccent
        ),
        initialRoute: '/',
        locale: _locale,
        home: SplashScreen(3, TabsScreen.routeName),
        routes: {
          TabsScreen.routeName: (ctx) => TabsScreen(),
          AboutUsScreen.routeName: (ctx) => AboutUsScreen(),
          LocationDetailsScreen.routeName: (ctx) => LocationDetailsScreen()
        },
      ),
    );
  }
}
