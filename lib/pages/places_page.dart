import 'package:flutter/material.dart';
import 'package:travelapp/model/models.dart';
import 'package:travelapp/pages/drawermenu.dart';
import 'package:travelapp/pages/home_page.dart';
import 'package:travelapp/pages/place_detail_page.dart';

class PlacesPage extends StatelessWidget {
  final Category category;

  PlacesPage({required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawermenu(),
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                height: MediaQuery.of(context).size.height / 20,
                width: MediaQuery.of(context).size.width / 6,
                "lib/assets/Preview.png",
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
        centerTitle: true,
        title: Text(category.name),
        leading: IconButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
              (route) => false,
            );
          },
          icon: Icon(Icons.arrow_circle_left_outlined),
        ),
      ),
      body: ListView.builder(
        itemCount: category.places.length,
        itemBuilder: (context, index) {
          final place = category.places[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PlaceDetailPage(
                    place: place,
                    imageUrls: [],
                  ),
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
                    child: Image(
                      image: place.imageUrls.first.startsWith('http')
                          ? NetworkImage(place.imageUrls.first)
                          : AssetImage(place.imageUrls.first) as ImageProvider,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 150.0,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.all(3.0),
                      color: Colors.black54.withOpacity(0.2),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                place.name,
                                style: const TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                            Image.asset(
                              "lib/assets/rating.png",
                              width: MediaQuery.of(context).size.width / 15,
                              height: MediaQuery.of(context).size.height / 30,
                            ),
                            Image.asset(
                              "lib/assets/road.png",
                              width: MediaQuery.of(context).size.width / 15,
                              height: MediaQuery.of(context).size.height / 30,
                            ),
                          ],
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
    );
  }
}
