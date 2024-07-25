import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert'; // JSON işlemek için gerekli
import 'package:travelapp/model/models.dart';
import 'package:travelapp/pages/drawermenu.dart';

class PlaceDetailPage extends StatefulWidget {
  final Place place;
  final List<String> imageUrls;

  PlaceDetailPage({required this.place, required this.imageUrls});

  @override
  _PlaceDetailPageState createState() => _PlaceDetailPageState();
}

class _PlaceDetailPageState extends State<PlaceDetailPage> {
  late PageController _pageController;
  int _currentPage = 0;
  bool _isFavorited = false;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _checkIfFavorited();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Future<void> _checkIfFavorited() async {
    final prefs = await SharedPreferences.getInstance();
    final favorites = prefs.getStringList('favorites') ?? [];
    setState(() {
      _isFavorited = favorites.contains(jsonEncode(widget.place.toJson()));
    });
  }

  Future<void> _toggleFavorite() async {
    final prefs = await SharedPreferences.getInstance();
    final favorites = prefs.getStringList('favorites') ?? [];

    final placeJson = jsonEncode(widget.place.toJson());

    if (_isFavorited) {
      favorites.remove(placeJson);
    } else {
      favorites.add(placeJson);
    }

    await prefs.setStringList('favorites', favorites);

    setState(() {
      _isFavorited = !_isFavorited;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      drawer: Drawermenu(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                widget.place.name,
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
              background: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  PageView.builder(
                    controller: _pageController,
                    itemCount: widget.place.imageUrls.length,
                    onPageChanged: (index) {
                      setState(() {
                        _currentPage = index;
                      });
                    },
                    itemBuilder: (context, index) {
                      final imageUrl = widget.place.imageUrls[index];
                      return Image.asset(
                        imageUrl,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      );
                    },
                  ),
                  Positioned(
                    bottom: 4.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:
                          List.generate(widget.place.imageUrls.length, (index) {
                        return AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          margin: EdgeInsets.symmetric(horizontal: 7.0),
                          height: 9.0,
                          width: _currentPage == index ? 10.0 : 5.0,
                          decoration: BoxDecoration(
                            color: _currentPage == index
                                ? Colors.black
                                : Colors.grey,
                            borderRadius: BorderRadius.circular(3.0),
                          ),
                        );
                      }),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.place.name,
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          onPressed: _toggleFavorite,
                          icon: Icon(
                            _isFavorited ? Icons.favorite : Icons.favorite,
                            color: _isFavorited
                                ? Colors.red
                                : Colors.grey.shade700,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 16.0),
                    Text(widget.place.description),
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
