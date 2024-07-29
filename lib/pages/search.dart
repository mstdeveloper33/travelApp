import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travelapp/data.dart';
import 'package:travelapp/model/models.dart';
import 'package:travelapp/pages/drawermenu.dart';
import 'package:travelapp/pages/place_detail_page.dart';
import 'package:travelapp/theme/dark_theme.dart';
import 'package:travelapp/theme/light_theme.dart';
import 'package:travelapp/theme/theme_provider.dart';

// Yerel veriler
final List<Category> categories = [
  camiler,
  tarihiYerler,
  lezzetDuraklari,
  piknikAlanlari,
  turbeler,
  parklar,
  muzeler,
];

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<Place> _allPlaces = [];
  List<Place> _filteredPlaces = [];
  String _searchQuery = '';

  @override
  void initState() {
    super.initState();
    // Tüm yerleri bir listeye al
    _allPlaces = categories.expand((category) => category.places).toList();
    _filteredPlaces = _allPlaces;
  }

  void _filterPlaces(String query) {
    setState(() {
      _searchQuery = query.toLowerCase();
      _filteredPlaces = _allPlaces.where((place) {
        final placeName = place.name.toLowerCase();
        return placeName.contains(_searchQuery);
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      drawer: Drawermenu(),
      backgroundColor: themeProvider.isDarkTheme
          ? darkTheme.scaffoldBackgroundColor
          : lightTheme.scaffoldBackgroundColor,
      appBar: AppBar(
        title: Text(
          'KEŞFET',
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
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              onChanged: _filterPlaces,
              decoration: const InputDecoration(
                labelText: 'Yerleri Keşfet',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(40),
                  ),
                ),
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _filteredPlaces.length,
              itemBuilder: (context, index) {
                final place = _filteredPlaces[index];
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Card(
                    color: themeProvider.isDarkTheme
                        ? darkTheme.cardTheme.color
                        : lightTheme.cardTheme.color,
                    child: ListTile(
                      contentPadding: EdgeInsets.all(8.0),
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
                      title: Text(
                        place.name,
                        style: TextStyle(
                          color: themeProvider.isDarkTheme
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PlaceDetailPage(
                              place: place,
                              imageUrls: place.imageUrls,
                            ),
                          ),
                        );
                      },
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
