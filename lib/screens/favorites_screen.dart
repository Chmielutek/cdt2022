import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timeline_tile/timeline_tile.dart';

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
              // FavoriteClassBlock(getFavoritesForClassBlock(classDay[i], favorites), classDay[i].startingHour)
          ],
        ),
      ),
    );
  }
}

class FavoriteClassTimelineTile extends StatelessWidget {
  List<int> danceClassIds;
  int startingHour;
  bool isFirst;
  bool isLast;

  FavoriteClassTimelineTile(this.danceClassIds, this.startingHour, this.isFirst, this.isLast);

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

  String _formatStartingHour(int startingHour) {
    var formattedStartingHour = '';
    switch (startingHour) {
      case 10:
        formattedStartingHour = '10:00 AM';
        break;
      case 11:
        formattedStartingHour = '11:00 AM';
        break;
      case 12:
        formattedStartingHour = '12:00 AM';
        break;
      case 14:
        formattedStartingHour = '2:00 PM';
        break;
      case 15:
        formattedStartingHour = '3:00 PM';
        break;
      case 16:
        formattedStartingHour = '4:00 PM';
        break;
    }
    return formattedStartingHour;
  }


  String formatDifficulty(Difficulty difficulty) {
    if (difficulty == Difficulty.OPEN) {
      return 'OPEN';
    }
    if (difficulty == Difficulty.INTERMEDIATE) {
      return 'INTERMEDIATE';
    }
    if (difficulty == Difficulty.ADVANCED) {
      return 'ADVANCED';
    }
    return '';
  }

  String formatClassRoom(ClassRoom classRoom) {
    if (classRoom == ClassRoom.A) {
      return 'Classroom A';
    }
    if (classRoom == ClassRoom.B) {
      return 'Classroom B';
    }
    if (classRoom == ClassRoom.C) {
      return 'Classroom C';
    }
    if (classRoom == ClassRoom.D) {
      return 'Classroom D';
    }
    return '';
  }

  @override
  Widget build(BuildContext context) {
    DanceClass? danceClass = getDanceClass(danceClassIds);
    Size size = MediaQuery.of(context).size;
    return TimelineTile(
      isFirst: this.isFirst,
      isLast: this.isLast,
      indicatorStyle: IndicatorStyle(
        width: 25,
        padding: EdgeInsets.symmetric(horizontal: 8),
          color: Theme.of(context).focusColor
      ),
      beforeLineStyle: LineStyle(
        color: Theme.of(context).focusColor
      ),
      axis: TimelineAxis.vertical,
      alignment: TimelineAlign.start,
      endChild: Container(
        height: size.height/8,
        child: Row(
          children: [
            Text(_formatStartingHour(this.startingHour), style: TextStyle(fontSize: 18),),
            danceClass != null ?
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: size.height/8,
                width: size.width * 0.65,
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
                child: Card(
                  color: Colors.redAccent,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(danceClass.name),
                            Text(danceClass.instructors)
                          ],
                        ),
                        Text(formatClassRoom(danceClass.classRoom))
                      ]
                  ),
                ),
              ),
            ) :
            Text(''),
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

