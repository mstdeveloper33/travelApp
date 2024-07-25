import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:travelapp/model/models.dart';

class FavoriteService {
  static const String _favoritePlacesKey = 'favorite_places';

  static Future<void> saveFavorites(List<Place> places) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> favoritePlaces = places.map((place) => json.encode(place.toJson())).toList();
    await prefs.setStringList(_favoritePlacesKey, favoritePlaces);
  }

  static Future<List<Place>> loadFavorites() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? favoritePlaces = prefs.getStringList(_favoritePlacesKey);
    if (favoritePlaces != null) {
      return favoritePlaces.map((place) => Place.fromJson(json.decode(place))).toList();
    }
    return [];
  }
}
