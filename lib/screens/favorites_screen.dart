import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_locatizations.dart';

import '../calle_data.dart';
import '../models/dance_class.dart';
import '../models/favorites.dart';
import '../widgets/favotire_class_timeline_tile.dart';

class FavoritesScreen extends StatelessWidget {

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
          child: const NoFavoritesFound(),
          builder: (ctx, favorites, ch) => favorites.items.where((fav) => fav.isFavorite == true).toList().isEmpty ?
              ch! :
              DefaultTabController(
                length: 2,
                child: Scaffold(
                  appBar: AppBar(
                    toolbarHeight: 0,
                    backgroundColor: Theme.of(context).backgroundColor,
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
                      FavoriteSchedule(SATURDAY_CLASSES, favorites.items),
                      FavoriteSchedule(SUNDAY_CLASSES, favorites.items)
                    ],
                  ),
                ),
              )
    ),
    );
  }
}

class FavoriteSchedule extends StatelessWidget {
  List<ClassesBlock> classDay;
  List<Favorite> favorites;

  FavoriteSchedule(this.classDay, this.favorites);

  List<int> getFavoritesForClassBlock(ClassesBlock classesBlock, List<Favorite> favorites) {
    return classesBlock.classesIds.where((danceClassId) => favorites.indexWhere((fav) => fav.danceClassId == danceClassId && fav.isFavorite == true) > -1)
        .toList();
  }

  bool isFirst(int classBlockIndex) {
    return classBlockIndex == 0;
  }

  bool isLast(int classBlockIndex) {
    return classBlockIndex == classDay.length - 1;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        height: size.height * 0.7,
        child: ListView(
          children: [
            for (int i = 0; i < classDay.length; i++)
              FavoriteClassTimelineTile(getFavoritesForClassBlock(classDay[i], favorites), classDay[i].startingHour, isFirst(i), isLast(i))
          ],
        ),
      ),
    );
  }
}

class NoFavoritesFound extends StatelessWidget {

  const NoFavoritesFound();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppLocalizations.of(context)?.nofavsheader as String,
              textAlign: TextAlign.center,
            ),
            Text(
              AppLocalizations.of(context)?.nofavsbody as String, softWrap: true,
              textAlign: TextAlign.center,
            )
          ],
        )
        ),
      );
  }
}

