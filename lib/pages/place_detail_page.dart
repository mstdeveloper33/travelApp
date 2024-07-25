import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travelapp/model/models.dart';
import 'package:travelapp/pages/drawermenu.dart';
import 'package:travelapp/provider/favorite_provider.dart';
 
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

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final favoriteProvider = Provider.of<FavoriteProvider>(context);

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
                          onPressed: () {
                            if (favoriteProvider.isFavorite(widget.place)) {
                              favoriteProvider.removeFavorite(widget.place);
                            } else {
                              favoriteProvider.addFavorite(widget.place);
                            }
                          },
                          icon: Icon(
                            favoriteProvider.isFavorite(widget.place)
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color: favoriteProvider.isFavorite(widget.place)
                                ? Colors.red
                                : Colors.grey,
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
