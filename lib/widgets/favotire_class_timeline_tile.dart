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

  String formatClassRoom(BuildContext context, ClassRoom classRoom) {
    if (classRoom == ClassRoom.A) {
      return '${AppLocalizations.of(context)?.classroom} 1';
    }
    if (classRoom == ClassRoom.B) {
      return '${AppLocalizations.of(context)?.classroom} 2';
    }
    if (classRoom == ClassRoom.C) {
      return '${AppLocalizations.of(context)?.classroom} 3';
    }
    if (classRoom == ClassRoom.D) {
      return '${AppLocalizations.of(context)?.classroom} 4';
    }
    return '';
  }

  Color getColorBasedOnDifficulty(Difficulty difficulty) {
    if (difficulty == Difficulty.ADVANCED) {
      return Colors.red;
    } else if (difficulty == Difficulty.INTERMEDIATE) {
      return Colors.blue;
    } else {
      return Colors.green;
    }
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
        height: size.height/6,
        width: size.width * 0.85,
        child: Row(
          children: [
            Container(
                width: size.width * 0.2,
                child: FavoriteClassStartingTime(this.startingHour)
            ),
            danceClass != null ?
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Container(
                height: size.height/6,
                width: size.width * 0.65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                    gradient: LinearGradient(
                        colors: [getColorBasedOnDifficulty(danceClass.difficulty), getColorBasedOnDifficulty(danceClass.difficulty).withOpacity(0.2)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight)
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: size.width * 0.4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(danceClass.name, softWrap: true, textAlign: TextAlign.center,),
                            Text(danceClass.instructors)
                          ],
                        ),
                      ),
                      Container(
                          width: size.width * 0.25,
                          child: Text(formatClassRoom(context, danceClass.classRoom))
                      )
                    ]
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
      case 1110:
        formattedStartingHour = '11:10 AM';
        break;
      case 12:
        formattedStartingHour = '12:00 PM';
        break;
      case 1210:
        formattedStartingHour = '12:10 PM';
        break;
      case 1220:
        formattedStartingHour = '12:20 PM';
        break;
      case 13:
        formattedStartingHour = '1:00 PM';
        break;
      case 1320:
        formattedStartingHour = '1:20 PM';
        break;
      case 1340:
        formattedStartingHour = '1:40 PM';
        break;
      case 14:
        formattedStartingHour = '2:00 PM';
        break;
      case 1420:
        formattedStartingHour = '2:20 PM';
        break;
      case 1430:
        formattedStartingHour = '2:30 PM';
        break;
      case 15:
        formattedStartingHour = '3:00 PM';
        break;
      case 1530:
        formattedStartingHour = '3:30 PM';
        break;
      case 1540:
        formattedStartingHour = '3:40 PM';
        break;
      case 16:
        formattedStartingHour = '4:00 PM';
        break;
      case 1610:
        formattedStartingHour = '4:10 PM';
        break;
      case 1640:
        formattedStartingHour = '4:40 PM';
        break;
      case 1650:
        formattedStartingHour = '4:50 PM';
        break;
      case 1720:
        formattedStartingHour = '5:20 PM';
        break;
      case 1750:
        formattedStartingHour = '5:50 PM';
        break;
      case 1800:
        formattedStartingHour = '6:00 PM';
        break;
    }
    return formattedStartingHour;
  }

  @override
  Widget build(BuildContext context) {
    return Text(_formatStartingHour(this.startingHour), style: TextStyle(fontSize: 14),);
  }
}
