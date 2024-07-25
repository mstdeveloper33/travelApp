import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travelapp/model/models.dart';
import 'package:travelapp/pages/place_detail_page.dart';
import 'package:travelapp/provider/favorite_provider.dart';

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final favoriteProvider = Provider.of<FavoriteProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
      ),
      body: ListView.builder(
        itemCount: favoriteProvider.favorites.length,
        itemBuilder: (context, index) {
          final place = favoriteProvider.favorites[index];
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
                  onPressed: () {
                    favoriteProvider.removeFavorite(place);
                  },
                ),
                onTap: () async {
                  final isFavorite = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PlaceDetailPage(
                        place: place,
                        imageUrls: place.imageUrls,
                      ),
                    ),
                  );

                  // Favori sayfasına geri döndüğünüzde favori listesi güncellenecek
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
