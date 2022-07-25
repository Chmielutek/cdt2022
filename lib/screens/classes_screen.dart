import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_locatizations.dart';

import '../models/favorites.dart';
import '../widgets/class_block_expansion.dart';
import '../calle_data.dart';

class ClassesScreen extends StatelessWidget {

  TabBar  _getTabBar(BuildContext context) {
    return TabBar(
      labelColor: Colors.black,
      indicatorColor: Colors.blue,
      overlayColor: MaterialStateProperty.all(Colors.transparent),
      tabs: [
        Tab(text: AppLocalizations.of(context)?.saturday,),
        Tab(text: AppLocalizations.of(context)?.sunday,)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    TabBar tabBar = _getTabBar(context);
    return FutureBuilder(
      future: Provider.of<Favorites>(context, listen: false).fetchAndSetFavorites(),
      builder: (ctx, snapshot) => snapshot.connectionState == ConnectionState.waiting ?
          const Center(child: CircularProgressIndicator()) :
          Consumer<Favorites>(
            builder: (ctx, favorites, _) => DefaultTabController(
              length: 2,
              child: Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.transparent,
                  toolbarHeight: 0,
                  bottom: PreferredSize(
                    preferredSize: tabBar.preferredSize,
                    child: ColoredBox(
                      color: Colors.white,
                      child: tabBar,
                    ),
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

