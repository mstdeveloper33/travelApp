// ignore_for_file: public_member_api_docs, sort_constructors_first
class Place {
  final String name;
  final String description;
  final List<String> imageUrls;
 
  Place({
    required this.name,
    required this.description,
    required this.imageUrls,
   
  });

 // JSON'dan ve JSON'a dönüştürmek için yardımcı işlevler
  Map<String, dynamic> toJson() => {
    'name': name,
    'description': description,
    'imageUrls': imageUrls,
    
  };

  factory Place.fromJson(Map<String, dynamic> json) => Place(
    name: json['name'],
    description: json['description'],
    imageUrls: List<String>.from(json['imageUrls']),
    
  );

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
