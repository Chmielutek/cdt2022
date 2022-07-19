import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/favorites.dart';
import '../widgets/class_block_expansion.dart';
import '../calle_data.dart';

class ClassesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Provider.of<Favorites>(context, listen: false).fetchAndSetFavorites(),
      builder: (ctx, snapshot) => snapshot.connectionState == ConnectionState.waiting ?
          const Center(child: CircularProgressIndicator()) :
          Consumer<Favorites>(
            builder: (ctx, favorites, _) => DefaultTabController(
              length: 2,
              child: Scaffold(
                appBar: AppBar(
                  backgroundColor: Theme.of(context).backgroundColor,
                  toolbarHeight: 0,
                  bottom: TabBar(
                    tabs: [
                      Tab(text: 'Saturday',),
                      Tab(text: 'Sunday',)
                    ],
                  ),
                ),
                body: TabBarView(
                  children: [
                    ClassBlocksExpansion(SATURDAY_CLASSES, favorites.items),
                    ClassBlocksExpansion(SUNDAY_CLASSES, favorites.items)
                  ],
                ),
              ),
            ),
          )
    );
  }
}

