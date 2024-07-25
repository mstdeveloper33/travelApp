import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert'; // JSON işlemek için gerekli
import 'package:travelapp/model/models.dart';
import 'package:travelapp/pages/place_detail_page.dart'; // Place modelini import edin

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  List<Place> _favoritePlaces = [];

  @override
  void initState() {
    super.initState();
    _loadFavorites();
  }

  Future<void> _loadFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final favorites = prefs.getStringList('favorites') ?? [];

    setState(() {
      _favoritePlaces = favorites
          .map((placeJson) => Place.fromJson(jsonDecode(placeJson)))
          .toList();
    });
  }

  Future<void> _removeFavorite(Place place) async {
    final prefs = await SharedPreferences.getInstance();
    final favorites = prefs.getStringList('favorites') ?? [];

    final placeJson = jsonEncode(place.toJson());
    favorites.remove(placeJson);
    await prefs.setStringList('favorites', favorites);

    setState(() {
      _favoritePlaces.remove(place);
    });
  }

  void _navigateToDetailPage(Place place) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            PlaceDetailPage(place: place, imageUrls: place.imageUrls),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Favori Yerlerim'),
      ),
      body: ListView.builder(
        itemCount: _favoritePlaces.length,
        itemBuilder: (context, index) {
          final place = _favoritePlaces[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Theme.of(context).cardTheme.color,
              child: ListTile(
                title: Text(place.name),
                leading: place.imageUrls.isNotEmpty
                    ? Image.asset(place.imageUrls.first,
                        width: 50, height: 50, fit: BoxFit.cover)
                    : null,
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () => _removeFavorite(place),
                ),
                onTap: () {
                  _navigateToDetailPage(place);
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
