import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  static String routeName = '/favorites';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          backgroundColor: Theme.of(context).backgroundColor,
          bottom: TabBar(
            tabs: [
              Tab(text: 'Saturday',),
              Tab(text: 'Sunday',)
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text('No favorites added yet, go to classes and choose something you like!', softWrap: true,),
          ),
        ),
      ),
    );
  }
}
