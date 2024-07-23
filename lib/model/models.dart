class Place {
  final String name;
  final String description;
  final List<String> imageUrls;

  Place({
    required this.name,
    required this.description,
    required this.imageUrls,
  });
}

class Category {
  final String name;
  final List<Place> places;
  final String imagePath;
  final String iconPath;

  Category({
    required this.name,
    required this.places,
    required this.imagePath,
    required this.iconPath,
  });
}
