import 'package:flutter/material.dart';

import '../helpers/db_helper.dart';


class Favorite {
  final int danceClassId;
  final bool isFavorite;

  Favorite({required this.danceClassId, required this.isFavorite});
}

class Favorites with ChangeNotifier {
  List<Favorite> _favorites = [];

  List<Favorite> get items {
    return [..._favorites];
  }

  Future<void> toggleFavorite(int id) async {
    var indexOfFavorite = _favorites.indexWhere((fav) => fav.danceClassId == id);
    var isCurrentlyFavorite = indexOfFavorite > -1 ? _favorites.elementAt(indexOfFavorite).isFavorite : false;

    int isFavorite;
    if (indexOfFavorite < 0) {
      isFavorite = 1;
      _favorites.add(Favorite(danceClassId: id, isFavorite: true));
    } else if (isCurrentlyFavorite == false) {
      isFavorite = 1;
      _favorites.insert(indexOfFavorite, Favorite(danceClassId: id, isFavorite: true));
    } else {
      isFavorite = 0;
      _favorites.removeAt(indexOfFavorite);
    }
    notifyListeners();
    DBHelper.insert('user_favorites', {
      'dance_class_id': id,
      'is_favorite': isFavorite
    });
  }

  Future<void> fetchAndSetFavorites() async {
    final dataList = await DBHelper.getData('user_favorites');
    _favorites = dataList.map(
            (item) => Favorite(
                danceClassId: item['dance_class_id'],
                isFavorite: item['is_favorite'] > 0 ? true : false
            )).toList();
    notifyListeners();
  }


}