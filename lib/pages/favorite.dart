import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travelapp/model/models.dart';
import 'package:travelapp/pages/drawermenu.dart';
import 'package:travelapp/pages/place_detail_page.dart';
import 'package:travelapp/provider/favorite_provider.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final favoriteProvider = Provider.of<FavoriteProvider>(context);

    return Scaffold(
      drawer: Drawermenu(),
      appBar: AppBar(
        title: Text(
          'FAVORİ YERLERİM',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        toolbarHeight: MediaQuery.of(context).size.height / 12,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.topCenter,
              colors: [Colors.teal.shade300, Colors.blue.shade300],
            ),
          ),
        ),
      ),
      body: favoriteProvider.favorites.isEmpty
          ? Center(
              child: Text('Henüz favori yeriniz yok.'),
            )
          : ListView.builder(
              itemCount: favoriteProvider.favorites.length,
              itemBuilder: (context, index) {
                final place = favoriteProvider.favorites[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    color: Theme.of(context).cardTheme.color,
                    child: ListTile(
                      contentPadding: EdgeInsets.all(8),
                      title: Text(place.name),
                      leading: place.imageUrls.isNotEmpty
                          ? ClipOval(
                              child: Image.asset(
                                place.imageUrls.first,
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                            )
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
                        if (isFavorite != null && !isFavorite) {
                          favoriteProvider.removeFavorite(place);
                        }
                      },
                    ),
                  ),
                );
              },
            ),
    );
  }
}
