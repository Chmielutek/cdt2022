import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:flutter_gen/gen_l10n/app_locatizations.dart';

import '../calle_data.dart';
import '../models/dance_class.dart';

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

  // String formatDifficulty(Difficulty difficulty) {
  //   if (difficulty == Difficulty.OPEN) {
  //     return AppLocalizations.of(context)?.open as String;
  //   }
  //   if (difficulty == Difficulty.INTERMEDIATE) {
  //     return AppLocalizations.of(context)?.intermediate as String;
  //   }
  //   if (difficulty == Difficulty.ADVANCED) {
  //     return AppLocalizations.of(context)?.advanced as String;
  //   }
  //   return '';
  // }

  String formatClassRoom(BuildContext context, ClassRoom classRoom) {
    if (classRoom == ClassRoom.A) {
      return '${AppLocalizations.of(context)?.classroom} A';
    }
    if (classRoom == ClassRoom.B) {
      return '${AppLocalizations.of(context)?.classroom} B';
    }
    if (classRoom == ClassRoom.C) {
      return '${AppLocalizations.of(context)?.classroom} C';
    }
    if (classRoom == ClassRoom.D) {
      return '${AppLocalizations.of(context)?.classroom} D';
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
        width: size.width * 0.65,
        child: Row(
          children: [
            Container(
                width: size.width / 5,
                child: FavoriteClassStartingTime(this.startingHour)
            ),
            danceClass != null ?
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: size.height/8,
                width: size.width * 0.65,
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
                        Text(formatClassRoom(context, danceClass.classRoom))
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

class FavoriteClassStartingTime extends StatelessWidget {
  int startingHour;

  FavoriteClassStartingTime(this.startingHour);

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

  @override
  Widget build(BuildContext context) {
    return Text(_formatStartingHour(this.startingHour), style: TextStyle(fontSize: 18),);
  }
}
