import 'package:travelapp/model/event_model.dart';
import 'package:travelapp/model/models.dart';

final camiler = Category(
  imagePath: "lib/assets/camiler/cami1.png",
  name: 'Camiler',
  places: [
    Place(
      name: 'Ağa Cami',
      description: 'Tarihi bir camidir. Sakarya\'da bulunur.',
      imageUrls: [
        'lib/assets/camiler/cami.png',
        'lib/assets/camiler/cami2.png',
        'lib/assets/camiler/cami3.png',
      ],
      latitude:
          40.78096510362698, // Örnek koordinatlar 40.78096510362698, 30.400904476626817
      longitude: 30.400904476626817,
    ),
    Place(
      name: 'Rahime Sultan Cami',
      description: 'Osmanlı döneminden kalma tarihi bir camidir.',
      imageUrls: [
        'lib/assets/camiler/cami1.png',
        'lib/assets/camiler/cami2.png',
        'lib/assets/camiler/cami.png',
      ],
      latitude:
          40.70058724814265, // Örnek koordinatlar   40.70058724814265, 30.309369420802778
      longitude: 30.309369420802778,
    ),
  ],
  iconPath: 'lib/assets/mosque.png',
);
final camilerr = Category(
  imagePath: "lib/assets/camiler/cami1.png",
  name: 'Camiler',
  places: [
    Place(
      name: 'Ağa Cami',
      description: 'Tarihi bir camidir. Sakarya\'da bulunur.',
      imageUrls: [
        'lib/assets/camiler/cami.png',
        'lib/assets/camiler/cami2.png',
        'lib/assets/camiler/cami3.png',
      ],
      latitude:
          40.78096510362698, // Örnek koordinatlar 40.78096510362698, 30.400904476626817
      longitude: 30.400904476626817,
    ),
    Place(
      name: 'Rahime Sultan Cami',
      description: 'Osmanlı döneminden kalma tarihi bir camidir.',
      imageUrls: [
        'lib/assets/camiler/cami1.png',
        'lib/assets/camiler/cami2.png',
        'lib/assets/camiler/cami.png',
      ],
      latitude:
          40.70058724814265, // Örnek koordinatlar   40.70058724814265, 30.309369420802778
      longitude: 30.309369420802778,
    ),
  ],
  iconPath: 'lib/assets/mosque.png',
);

final tarihiYerler = Category(
  name: 'Tarihi Yerler',
  places: [
    Place(
      name: 'Sakarya Müzesi',
      description:
          'Sakarya\'nın tarihi ve kültürel mirasını sergileyen bir müzedir.',
      imageUrls: [
        'lib/assets/muzeler/alifuat.png',
        'lib/assets/muzeler/deprem.png',
        'lib/assets/muzeler/sakaryamuzesi.png',
      ],
      latitude:
          40.77401959457238, // Örnek koordinatlar      40.77401959457238, 30.400672022659112
      longitude: 30.400672022659112,
    ),
    Place(
      name: 'Sakarya Köprüsü',
      description: 'Sakarya Nehri üzerinde bulunan tarihi bir köprüdür.',
      imageUrls: [
        'lib/assets/tarihiyerler/bayezid.png',
        'lib/assets/tarihiyerler/harmantepe.png',
        'lib/assets/tarihiyerler/pasalar.png',
      ],
      latitude:
          40.777912904986756, // Örnek koordinatlar     40.777912904986756, 30.4002893396061
      longitude: 30.4002893396061,
    ),
  ],
  imagePath: 'lib/assets/tarihiyerler/pasalar.png',
  iconPath: 'lib/assets/museum.png',
);

final lezzetDuraklari = Category(
  name: 'Lezzet Durakları',
  places: [
    Place(
      name: 'Sakarya Kebap Salonu',
      description:
          'Sakarya\'da lezzetli kebapların bulunduğu ünlü bir restoran.',
      imageUrls: [
        "lib/assets/mekanlar/mekan.png",
        "lib/assets/mekanlar/mekan1.png",
        "lib/assets/mekanlar/mekan2.png",
        "lib/assets/mekanlar/mekan3.png",
        "lib/assets/mekanlar/mekan4.png"
      ],
      latitude: 40.735776, // Örnek koordinatlar
      longitude: -74.023974,
    ),
    Place(
      name: 'Lezzet Durağı',
      description: 'Yöresel tatların sunulduğu popüler bir restoran.',
      imageUrls: [
        "lib/assets/mekanlar/mekan3.png",
        "lib/assets/mekanlar/mekan4.png"
      ],
      latitude: 40.745776, // Örnek koordinatlar
      longitude: -74.033974,
    ),
  ],
  imagePath: 'lib/assets/mekanlar/mekan.png',
  iconPath: 'lib/assets/food.png',
);

final piknikAlanlari = Category(
  name: 'Piknik Alanları',
  places: [
    Place(
      name: 'Sakarya Park',
      description: 'Ailecek vakit geçirilebilecek geniş bir piknik alanı.',
      imageUrls: [
        "lib/assets/piknikler/golpark.png",
        "lib/assets/piknikler/kentpark.png",
        "lib/assets/piknikler/kuzuluk.png",
        "lib/assets/piknikler/poyrazlar.png",
        "lib/assets/piknikler/sakaryatabiatpark.png",
        "lib/assets/piknikler/sapancagolu.png"
      ],
      latitude:
          40.7402219513027, // Örnek koordinatlar     40.7402219513027, 30.41821693800163
      longitude: 30.41821693800163,
    ),
    Place(
      name: 'Doğa Parkı',
      description: 'Doğayla iç içe piknik yapılabilecek güzel bir park.',
      imageUrls: [
        "lib/assets/piknikler/poyrazlar.png",
        "lib/assets/piknikler/sakaryatabiatpark.png",
        "lib/assets/piknikler/sapancagolu.png"
      ],
      latitude: 40.765776, // Örnek koordinatlar
      longitude: -74.053974,
    ),
  ],
  imagePath: 'lib/assets/piknikler/sapancagolu.png',
  iconPath: 'lib/assets/picnic.png',
);

final turbeler = Category(
  name: 'Türbeler',
  places: [
    Place(
      name: 'Sakarya Türbesi',
      description: 'Sakarya\'da bulunan tarihi bir türbe.',
      imageUrls: [
        "lib/assets/turbeler/karincalidede.png",
        "lib/assets/turbeler/sakarbaba.png",
        "lib/assets/turbeler/seyyidkaraman.png"
      ],
      latitude: 40.775776, // Örnek koordinatlar
      longitude: -74.063974,
    ),
    Place(
      name: 'Hoca Türbesi',
      description: 'Ünlü bir din aliminin türbesi.',
      imageUrls: [
        "lib/assets/turbeler/karincalidede.png",
        "lib/assets/turbeler/sakarbaba.png",
        "lib/assets/turbeler/seyyidkaraman.png"
      ],
      latitude: 40.785776, // Örnek koordinatlar
      longitude: -74.073974,
    ),
  ],
  imagePath: 'lib/assets/turbeler/sakarbaba.png',
  iconPath: 'lib/assets/tomb.png',
);

final parklar = Category(
  name: 'Parklar',
  places: [
    Place(
      name: 'Şehir Parkı',
      description: 'Şehir merkezinde bulunan büyük bir park.',
      imageUrls: [
        "lib/assets/parklar/macerapark.png",
        "lib/assets/parklar/ormanpark.png",
        "lib/assets/parklar/serdivantepesi.png",
        "lib/assets/parklar/uzunkumpark.png"
      ],
      latitude: 40.795776, // Örnek koordinatlar
      longitude: -74.083974,
    ),
    Place(
      name: 'Göl Parkı',
      description: 'Göl kenarında yer alan dinlenme ve yürüyüş parkı.',
      imageUrls: [
        "lib/assets/parklar/ormanpark.png",
        "lib/assets/parklar/serdivantepesi.png",
        "lib/assets/parklar/uzunkumpark.png"
      ],
      latitude:
          40.73598297684977, // Örnek koordinatlar  40.73598297684977, 30.319047095807317
      longitude: 30.319047095807317,
    ),
  ],
  imagePath: 'lib/assets/parklar/uzunkumpark.png',
  iconPath: 'lib/assets/parc.png',
);

final muzeler = Category(
  name: 'Müzeler',
  places: [
    Place(
      name: 'Sakarya Müzesi',
      description:
          'Sakarya\'nın tarihi ve kültürel mirasını sergileyen bir müze.',
      imageUrls: [
        'lib/assets/muzeler/alifuat.png',
        'lib/assets/muzeler/deprem.png',
        'lib/assets/muzeler/sakaryamuzesi.png',
      ],
      latitude: 40.815776, // Örnek koordinatlar
      longitude: -74.103974,
    ),
    Place(
      name: 'Tarih Müzesi',
      description: 'Bölgenin tarihine ışık tutan bir müze.',
      imageUrls: [
        'lib/assets/muzeler/alifuat.png',
        'lib/assets/muzeler/deprem.png',
        'lib/assets/muzeler/sakaryamuzesi.png',
      ],
      latitude: 40.825776, // Örnek koordinatlar
      longitude: -74.113974,
    ),
  ],
  imagePath: 'lib/assets/muzeler/deprem.png',
  iconPath: 'lib/assets/museum.png',
);

final List<Category> categories = [
  camiler,
  camilerr,
  tarihiYerler,
  lezzetDuraklari,
  piknikAlanlari,
  turbeler,
  parklar,
  muzeler,
];
// Etkinlikler için tek liste
final List<Event> events = [
  Event(
    tur: "Müzik",
    name: 'Müzik Festivali',
    description: 'Bu yılın en büyük müzik festivali!',
    imageUrls: ['lib/assets/events/konser.png'],
    eventDate: DateTime(2024, 9, 15, 18, 20),
    detailimage: ['lib/assets/events/konser.png'],
  ),
  Event(
    name: 'Sanat Sergisi',
    description: 'Yerel sanatçıların eserlerinin sergilendiği etkinlik.',
    imageUrls: ['lib/assets/events/sanat.gif'],
    eventDate: DateTime(2024, 10, 5, 20, 30),
    detailimage: ['lib/assets/events/cizgi.png'],
    tur: 'Sanat',
  ),
  Event(
    name: 'Maraton Koşusu',
    description: 'Şehir genelinde düzenlenen maraton etkinliği.',
    imageUrls: ['lib/assets/events/maraton.png'],
    eventDate: DateTime(2024, 11, 1, 9, 45),
    detailimage: ['lib/assets/events/maraton.png'],
    tur: 'Spor',
  ),
  Event(
    name: 'Futbol Maçı',
    description: 'Ligdeki büyük futbol maçı.',
    imageUrls: ['lib/assets/events/futbol.png'],
    eventDate: DateTime(2024, 12, 20, 16, 30),
    detailimage: ['lib/assets/events/futbol.png'],
    tur: 'Spor',
  ),
  Event(
    name: 'Ağaçlandırma Kampanyası',
    description: 'Doğayı korumaya yönelik bir etkinlik.',
    imageUrls: ['lib/assets/events/agaclandirma.gif'],
    eventDate: DateTime(2024, 12, 20, 15, 30),
    detailimage: ['lib/assets/events/agaclandirma.gif'],
    tur: 'Doğa',
  ),
  Event(
    name: 'Huzurevi Ziyareti',
    description: 'Huzurevindeki yaşlıları ziyaret edeceğimiz etkinlik.',
    imageUrls: ['lib/assets/events/huzurevi.png'],
    eventDate: DateTime(2024, 12, 20, 11, 45),
    detailimage: ['lib/assets/events/huzurevi.png'],
    tur: 'Sosyal',
  ),
  Event(
    name: 'Çizgi Çalışması',
    description: 'Sanat ve çizgi üzerine bir çalışma.',
    imageUrls: ['lib/assets/events/cizgi.png'],
    eventDate: DateTime(2024, 12, 20, 14, 30),
    detailimage: ['lib/assets/events/cizgi.png'],
    tur: 'Resim',
  ),
];

List<Event> getEvents() {
  return events;
}
