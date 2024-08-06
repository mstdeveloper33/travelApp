import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travelapp/model/models.dart';
import 'package:travelapp/pages/drawermenu.dart';
import 'package:travelapp/provider/favorite_provider.dart';
import 'package:url_launcher/url_launcher.dart'; // URL açmak için
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

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

  // Google Maps uygulamasında yol tarifi açmak için bir yöntem
  void _openGoogleMaps() async {
    final url =
        'https://www.google.com/maps/dir/?api=1&destination=${widget.place.latitude},${widget.place.longitude}';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Google Maps açılamıyor.';
    }
  }

  // Resmi tam ekran galeride gösteren bir yöntem
  void _showImageGallery(BuildContext context, int initialIndex) {
    showDialog(
      useRootNavigator: true,
      barrierColor: Colors.black,
      context: context,
      builder: (context) {
        return Dialog(
          backgroundColor: Colors.black,
          insetPadding: EdgeInsets.all(0),
          child: PhotoViewGallery.builder(
            itemCount: widget.place.imageUrls.length,
            builder: (context, index) {
              return PhotoViewGalleryPageOptions(
                  basePosition: Alignment.center,
                  imageProvider: AssetImage(widget.place.imageUrls[index]),
                  minScale: PhotoViewComputedScale.contained,
                  maxScale: PhotoViewComputedScale.covered * 2);
            },
            scrollPhysics: BouncingScrollPhysics(
                decelerationRate: ScrollDecelerationRate.fast),
            backgroundDecoration: BoxDecoration(
              color: Colors.black,
            ),
            pageController: PageController(initialPage: initialIndex),
          ),
        );
      },
    );
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
                  GestureDetector(
                    onTap: () {
                      _showImageGallery(context, _currentPage);
                    },
                    child: PageView.builder(
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
                        Expanded(
                          flex: 3,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              widget.place.name,
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: ElevatedButton(
                            onPressed: _openGoogleMaps,
                            child: Row(
                              children: [
                                Text("Yol Tarifi "),
                                Expanded(
                                  child: Icon(Icons.map_outlined),
                                ),
                              ],
                            ),
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor:
                                  Colors.blueGrey.shade700, // Buton metni rengi
                            ),
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
                    SizedBox(height: 16.0),
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
