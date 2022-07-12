import 'package:flutter/material.dart';

import '../screens/classes_screen.dart';
import '../screens/about_us_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon, Function() tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).canvasColor,
            child: Text('Menu',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 24,
                    color: Theme.of(context).primaryColor)),
          ),
          SizedBox(
            height: 20,
          ),
          buildListTile(
              'About Us',
              Icons.settings,
                  () {
                Navigator.of(context).pushReplacementNamed(AboutUsScreen.routeName);
              }
          ),
        ],
      ),
    );
  }
}
