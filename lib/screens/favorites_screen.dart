import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../calle_data.dart';
import '../models/dance_class.dart';
import '../models/favorites.dart';

class FavoritesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Provider.of<Favorites>(context).fetchAndSetFavorites(),
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
                        Tab(text: 'Saturday',),
                        Tab(text: 'Sunday',)
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

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        height: size.height * 0.7,
        child: ListView(
          children: [
            for (int i = 0; i < classDay.length; i++)
              FavoriteClassBlock(getFavoritesForClassBlock(classDay[i], favorites), classDay[i].startingHour)
          ],
        ),
      ),
    );
  }
}

class FavoriteClassBlock extends StatelessWidget {
  List<int> danceClassIds;
  int startingHour;

  FavoriteClassBlock(this.danceClassIds, this.startingHour);

  DanceClass? getDanceClass(List<int> danceClassIds) {
    if (danceClassIds == null || danceClassIds.length < 1) {
      return null;
    }
    var danceClassIndex = DANCE_CLASSES.indexWhere((danceClass) => danceClass.id == danceClassIds[0]);
    if (danceClassIndex > -1) {
      return DANCE_CLASSES.elementAt(danceClassIndex);
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    DanceClass? danceClass = getDanceClass(danceClassIds);
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
            height: size.height/5,
            width: double.infinity,
            child: Center(
              child: danceClass != null ?
              Card(
                color: Colors.redAccent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(startingHour.toString()),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(danceClass.name),
                        Text(danceClass.instructors)
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(danceClass.difficulty.toString()),
                        Text(danceClass.classRoom.toString())
                      ],
                    )
                  ]
                ),
              ) :
              Text('No favorites added to this class block'),
            )
        ),
        SizedBox(
          height: 5,
        )
      ],
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
            Text('No favorites added yet!'),
            Text('Go to classes and choose something you like to create your dream schedule!', softWrap: true,)
          ],
        )
        ),
      );
  }
}

