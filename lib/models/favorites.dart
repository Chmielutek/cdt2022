import 'package:calle_de_timberos/calle_data.dart';
import 'package:flutter/material.dart';

import '../helpers/db_helper.dart';
import 'dance_class.dart';


class Favorite {
  final int danceClassId;
  final int classesBlockId;
  final bool isFavorite;

  Favorite({required this.danceClassId, required this.classesBlockId, required this.isFavorite});
}

class Favorites with ChangeNotifier {
  List<Favorite> _favorites = [];

  List<Favorite> get items {
    return [..._favorites];
  }

  Future<void> toggleFavorite(int danceClassId, int classBlockId) async {
    var indexOfFavorite = _favorites.indexWhere((fav) => fav.danceClassId == danceClassId);
    var isCurrentlyFavorite = indexOfFavorite > -1 ? _favorites.elementAt(indexOfFavorite).isFavorite : false;

    resetClassBlock(classBlockId);

    int isFavorite;
    if (indexOfFavorite < 0) {
      isFavorite = 1;
      _favorites.add(Favorite(danceClassId: danceClassId, classesBlockId: classBlockId, isFavorite: true));
    } else if (isCurrentlyFavorite == false) {
      isFavorite = 1;
      _favorites.insert(indexOfFavorite, Favorite(danceClassId: danceClassId, classesBlockId: classBlockId, isFavorite: true));
    } else {
      isFavorite = 0;
      _favorites.removeAt(indexOfFavorite);
    }
    notifyListeners();
    DBHelper.insert('user_favorites', {
      'dance_class_id': danceClassId,
      'is_favorite': isFavorite
    });
  }

  Future<void> fetchAndSetFavorites() async {
    final dataList = await DBHelper.getData('user_favorites');
    _favorites = dataList.map(
            (item) => Favorite(
                danceClassId: item['dance_class_id'],
                classesBlockId: item['classes_block_id'],
                isFavorite: item['is_favorite'] > 0 ? true : false
            )).toList();
    notifyListeners();
  }

  void resetClassBlock(int classBlockId) {
    late ClassesBlock classBlock;
    if (SATURDAY_CLASSES.indexWhere((element) => element.id == classBlockId) > -1) {
      classBlock = SATURDAY_CLASSES.firstWhere((element) => element.id == classBlockId);
    }
    if (SUNDAY_CLASSES.indexWhere((element) => element.id == classBlockId) > -1) {
      classBlock = SUNDAY_CLASSES.firstWhere((element) => element.id == classBlockId);
    }

    for (var danceClassId in classBlock.classesIds) {
        var indexOfFavorite = _favorites.indexWhere((fav) => fav.danceClassId == danceClassId);
        var isCurrentlyFavorite = indexOfFavorite > -1 ? _favorites.elementAt(indexOfFavorite).isFavorite : false;
        int isFavorite = 0;
        if (isCurrentlyFavorite) {
          _favorites.removeAt(indexOfFavorite);
          DBHelper.insert('user_favorites', {
            'dance_class_id': danceClassId,
            'is_favorite': isFavorite
          });
        }
        notifyListeners();
    }
  }
}
