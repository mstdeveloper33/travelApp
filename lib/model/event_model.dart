// ignore_for_file: public_member_api_docs, sort_constructors_first
// event.dart

class Event {
  final String name;
  final String description;
  final List<String> imageUrls;
  final List<String> detailimage;
  final DateTime eventDate;
  final String? tur;

  Event({
    required this.name,
    required this.description,
    required this.imageUrls,
    required this.detailimage,
    required this.eventDate,
    required this.tur,
  });

  // JSON'dan ve JSON'a dönüştürmek için yardımcı işlevler
  Map<String, dynamic> toJson() => {
        'name': name,
        'description': description,
        'imageUrls': imageUrls,
        'detailimage': detailimage, // detailimage alanı eklendi
        'eventDate': eventDate.toIso8601String(),
        "tur": tur,
      };

  factory Event.fromJson(Map<String, dynamic> json) => Event(
        name: json['name'],
        description: json['description'],
        imageUrls: List<String>.from(json['imageUrls']),
        detailimage:
            List<String>.from(json['detailimage']), // detailimage alanı eklendi
        eventDate: DateTime.parse(json['eventDate']), tur: json["tur"],
      );
}

// class EventCategory {
//   final String name;
//   final List<Event> events;
//   final String imagePath;
//   final String iconPath;

//   EventCategory({
//     required this.name,
//     required this.events,
//     required this.imagePath,
//     required this.iconPath,
//   });

//   factory EventCategory.fromJson(Map<String, dynamic> json) {
//     return EventCategory(
//       name: json['name'],
//       events: (json['events'] as List<dynamic>)
//           .map((eventJson) => Event.fromJson(eventJson))
//           .toList(),
//       imagePath: json['imagePath'],
//       iconPath: json['iconPath'],
//     );
//   }

//   // JSON'a dönüştürmek için yardımcı işlev
//   Map<String, dynamic> toJson() => {
//         'name': name,
//         'events': events.map((event) => event.toJson()).toList(),
//         'imagePath': imagePath,
//         'iconPath': iconPath,
//       };
// }
