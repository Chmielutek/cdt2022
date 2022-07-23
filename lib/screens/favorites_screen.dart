import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_locatizations.dart';

import '../calle_data.dart';
import '../models/dance_class.dart';
import '../models/favorites.dart';
import '../widgets/favotire_class_timeline_tile.dart';

class FavoritesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Provider.of<Favorites>(context, listen: false).fetchAndSetFavorites(),
      builder: (ctx, snapshot) => snapshot.connectionState == ConnectionState.waiting ?
      const Center(child: CircularProgressIndicator()) :
      Consumer<Favorites>(
          child: NoFavoritesFound(),
          builder: (ctx, favorites, ch) => favorites.items.length <= 0 ?
              ch! :
              DefaultTabController(
                length: 2,
                child: Scaffold(
                  appBar: AppBar(
                    toolbarHeight: 0,
                    backgroundColor: Theme.of(context).backgroundColor,
                    bottom: TabBar(
                      tabs: [
                        Tab(text: AppLocalizations.of(context)?.saturday,),
                        Tab(text: AppLocalizations.of(context)?.sunday,)
                      ],
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
    return classesBlock.classesIds.where((danceClassId) => favorites.indexWhere((fav) => fav.danceClassId == danceClassId) > -1).toList();
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
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(AppLocalizations.of(context)?.nofavsheader as String),
            Text(AppLocalizations.of(context)?.nofavsbody as String, softWrap: true,)
          ],
        )
        ),
      );
  }
}

