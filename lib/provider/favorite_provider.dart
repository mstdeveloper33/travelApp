import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travelapp/model/models.dart';

class FavoriteProvider extends ChangeNotifier {
  List<Place> _favorites = [];

  List<Place> get favorites => _favorites;

  FavoriteProvider() {
    _loadFavorites();
  }

  Future<void> _loadFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final favoritesJson = prefs.getStringList('favorites') ?? [];

    _favorites = favoritesJson
        .map((placeJson) => Place.fromJson(jsonDecode(placeJson)))
        .toList();
    
    notifyListeners();
  }

  Future<void> addFavorite(Place place) async {
    final prefs = await SharedPreferences.getInstance();
    final placeJson = jsonEncode(place.toJson());

    if (!_favorites.any((p) => p.name == place.name)) {
      _favorites.add(place);
      await prefs.setStringList('favorites', _favorites.map((p) => jsonEncode(p.toJson())).toList());
      notifyListeners();
    }
  }

  Future<void> removeFavorite(Place place) async {
    final prefs = await SharedPreferences.getInstance();
    final placeJson = jsonEncode(place.toJson());

    _favorites.removeWhere((p) => p.name == place.name);
    await prefs.setStringList('favorites', _favorites.map((p) => jsonEncode(p.toJson())).toList());
    notifyListeners();
  }

  bool isFavorite(Place place) {
    return _favorites.any((p) => p.name == place.name);
  }
}
