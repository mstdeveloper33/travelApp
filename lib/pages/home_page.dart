import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:travelapp/data.dart';
import 'package:travelapp/pages/drawermenu.dart';
import 'package:travelapp/pages/favorite.dart';
import 'package:travelapp/pages/places_page.dart';
import 'package:travelapp/pages/settings.page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawermenu(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            //  elevation: 100,
            titleSpacing: 40,
            expandedHeight: 200.0,
            pinned: true,
            flexibleSpace: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                final double opacity =
                    (1.9 - (constraints.maxHeight - kToolbarHeight) / 200.0)
                        .clamp(0.0, 1.0);
                return Stack(
                  fit: StackFit.expand,
                  children: [
                    Opacity(
                      opacity: opacity,
                      child: Image.asset(
                        'lib/assets/camiler/cami.png', // AppBar için resim yolu
                        fit: BoxFit.cover,
                      ),
                    ),
                    FlexibleSpaceBar(
                      centerTitle: true,
                      title: Text(
                        'Sakaryayı Keşfet',
                        style: TextStyle(color: Colors.white),
                      ),
                      background: Image.asset(
                        'lib/assets/camiler/cami1.png', // AppBar için resim yolu
                        fit: BoxFit.cover,
                      ),
                      collapseMode: CollapseMode.parallax,
                    ),
                  ],
                );
              },
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(8.0),
            sliver: SliverMasonryGrid.count(
              crossAxisCount: 2,
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 4.0,
              childCount: categories.length,
              itemBuilder: (context, index) {
                final category = categories[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PlacesPage(category: category),
                      ),
                    );
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Stack(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(15.0),
                          ),
                          child: Image.asset(
                            category.imagePath,
                            fit: BoxFit.fill,
                            width: double.infinity,
                            height: 150.0 + (index % 3) * 50.0,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            padding: EdgeInsets.all(3.0),
                            color: Colors.black54.withOpacity(
                                0.1), // Arka plan rengini belirleyin
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                category.name,
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white, // Metin rengi
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
