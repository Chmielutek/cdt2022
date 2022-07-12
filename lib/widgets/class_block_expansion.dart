import 'package:calle_de_timberos/calle_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/dance_class.dart';
import '../models/favorites.dart';

class ClassBlocksExpansion extends StatefulWidget {
  final List<ClassesBlock> classBlocks;
  final List<Favorite> favorites;

  ClassBlocksExpansion(this.classBlocks, this.favorites);

  @override
  State<ClassBlocksExpansion> createState() => _ClassBlocksExpansionState();
}

class _ClassBlocksExpansionState extends State<ClassBlocksExpansion> {
  List<bool> _isExpanded = List.generate(10, (_) => false);

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

  DanceClass getDanceClassById(int id) {
    return DANCE_CLASSES.firstWhere((danceCl) => danceCl.id == id);
  }

  bool isFavorite(int id) {
    var index = widget.favorites.indexWhere((fav) => fav.danceClassId == id);
    return index < 0  ? false : widget.favorites.elementAt(index).isFavorite;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: ExpansionPanelList(
            expansionCallback: (index, isExpanded) => setState(() {
              _isExpanded[index] = !isExpanded;
            }),
            children: [
              for (int i = 0; i < widget.classBlocks.length; i++)
                ExpansionPanel(
                    backgroundColor: Theme.of(context).backgroundColor,
                    headerBuilder: (_, isExpanded) {
                      return Center(
                        child: Text(_formatStartingHour(widget.classBlocks[i].startingHour)),
                      );
                    },
                    body: Column(
                        children: widget.classBlocks[i].classesIds
                            .map((danceClassId) => DanceClassCard(getDanceClassById(danceClassId), isFavorite(danceClassId))).toList()
                    ),
                    isExpanded: _isExpanded[i]
                )
            ]
        ),
      ),
    );
  }
}

class DanceClassCard extends StatefulWidget {
  DanceClass danceClass;
  bool isFavorite;

  DanceClassCard(this.danceClass, this.isFavorite);

  @override
  State<DanceClassCard> createState() => _DanceClassCardState();
}

class _DanceClassCardState extends State<DanceClassCard> {


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
    var favorites = Provider.of<Favorites>(context, listen: false);
    Size size = MediaQuery.of(context).size;
    var columnWidth = (size.width - 10) / 3;
    return Container(
      width: double.infinity,
      child: Card(
        elevation: 4,
        margin: EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: columnWidth,
              child: Column(
                children: [
                  Text(widget.danceClass.name),
                  Text(widget.danceClass.instructors),
                ],
              ),
            ),
            Container(
              width: columnWidth,
              child: Column(
                children: [
                  Text(formatDifficulty(widget.danceClass.difficulty)),
                  Text(formatClassRoom(widget.danceClass.classRoom)),
                ],
              ),
            ),
            Container(
              width: columnWidth / 3,
              child: IconButton(
                  onPressed: () {
                    favorites.toggleFavorite(widget.danceClass.id);
                    setState(() {});
                  },
                  icon: widget.isFavorite == true ? Icon(Icons.favorite) : Icon(Icons.favorite_border)
              ),
            )
          ],
        ),
      ),
    );
  }
}