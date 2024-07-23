import 'package:travelapp/model/models.dart';

// Camiler kategorisi
final camiler = Category(
  imagePath: "lib/assets/camiler/cami1.png",
  name: 'Camiler',
  places: [
    Place(
      name: 'Ağa Cami',
      description:
          'Tahtalı Cami, Sakarya\'da bulunan tarihi bir camidir. Tahtalı Cami, Sakarya\'da bulunan tarihi bir camidir.Tahtalı Cami, Sakarya\'da bulunan tarihi bir camidir.Tahtalı Cami, Sakarya\'da bulunan tarihi bir camidir.Tahtalı Cami, Sakarya\'da bulunan tarihi bir camidir.Tahtalı Cami, Sakarya\'da bulunan tarihi bir camidir.Tahtalı Cami, Sakarya\'da bulunan tarihi bir camidir.Tahtalı Cami, Sakarya\'da bulunan tarihi bir camidir.Tahtalı Cami, Sakarya\'da bulunan tarihi bir camidir.Tahtalı Cami, Sakarya\'da bulunan tarihi bir camidir.Tahtalı Cami, Sakarya\'da bulunan tarihi bir camidir.Tahtalı Cami, Sakarya\'da bulunan tarihi bir camidir.Tahtalı Cami, Sakarya\'da bulunan tarihi bir camidir.Tahtalı Cami, Sakarya\'da bulunan tarihi bir camidir.Tahtalı Cami, Sakarya\'da bulunan tarihi bir camidir.Tahtalı Cami, Sakarya\'da bulunan tarihi bir camidir.Tahtalı Cami, Sakarya\'da bulunan tarihi bir camidir.Tahtalı Cami, Sakarya\'da bulunan tarihi bir camidir.Tahtalı Cami, Sakarya\'da bulunan tarihi bir camidir.Tahtalı Cami, Sakarya\'da bulunan tarihi bir camidir.Tahtalı Cami, Sakarya\'da bulunan tarihi bir camidir.Tahtalı Cami, Sakarya\'da bulunan tarihi bir camidir.Tahtalı Cami, Sakarya\'da bulunan tarihi bir camidir.Tahtalı Cami, Sakarya\'da bulunan tarihi bir camidir.Tahtalı Cami, Sakarya\'da bulunan tarihi bir camidir.Tahtalı Cami, Sakarya\'da bulunan tarihi bir camidir.Tahtalı Cami, Sakarya\'da bulunan tarihi bir camidir.Tahtalı Cami, Sakarya\'da bulunan tarihi bir camidir.Tahtalı Cami, Sakarya\'da bulunan tarihi bir camidir.Tahtalı Cami, Sakarya\'da bulunan tarihi bir camidir.Tahtalı Cami, Sakarya\'da bulunan tarihi bir camidir.Tahtalı Cami, Sakarya\'da bulunan tarihi bir camidir.Tahtalı Cami, Sakarya\'da bulunan tarihi bir camidir.Tahtalı Cami, Sakarya\'da bulunan tarihi bir camidir.Tahtalı Cami, Sakarya\'da bulunan tarihi bir camidir.Tahtalı Cami, Sakarya\'da bulunan tarihi bir camidir.Tahtalı Cami, Sakarya\'da bulunan tarihi bir camidir.Tahtalı Cami, Sakarya\'da bulunan tarihi bir camidir.Tahtalı Cami, Sakarya\'da bulunan tarihi bir camidir.Tahtalı Cami, Sakarya\'da bulunan tarihi bir camidir.Tahtalı Cami, Sakarya\'da bulunan tarihi bir camidir.Tahtalı Cami, Sakarya\'da bulunan tarihi bir camidir.Tahtalı Cami, Sakarya\'da bulunan tarihi bir camidir.Tahtalı Cami, Sakarya\'da bulunan tarihi bir camidir.Tahtalı Cami, Sakarya\'da bulunan tarihi bir camidir.Tahtalı Cami, Sakarya\'da bulunan tarihi bir camidir.Tahtalı Cami, Sakarya\'da bulunan tarihi bir camidir.Tahtalı Cami, Sakarya\'da bulunan tarihi bir camidir.Tahtalı Cami, Sakarya\'da bulunan tarihi bir camidir.Tahtalı Cami, Sakarya\'da bulunan tarihi bir camidir.Tahtalı Cami, Sakarya\'da bulunan tarihi bir camidir.Tahtalı Cami, Sakarya\'da bulunan tarihi bir camidir.',
      imageUrls: [
        'lib/assets/camiler/cami.png',
        'lib/assets/camiler/cami2.png',
        'lib/assets/camiler/cami3.png',
      ],
    ),
    Place(
      name: 'Rahime Sultan Cami',
      description: 'Orhan Cami, Osmanlı döneminden kalma tarihi bir camidir.',
      imageUrls: [
        'lib/assets/camiler/cami1.png',
        'lib/assets/camiler/cami2.png',
        'lib/assets/camiler/cami.png',
      ],
    ),
  ],
  iconPath: 'lib/assets/mosque.png',
);

// Tarihi Yerler kategorisi
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
    ),
    Place(
      name: 'Sakarya Köprüsü',
      description: 'Sakarya Nehri üzerinde bulunan tarihi bir köprüdür.',
      imageUrls: [
        'lib/assets/tarihiyerler/bayezid.png',
        'lib/assets/tarihiyerler/harmantepe.png',
        'lib/assets/tarihiyerler/pasalar.png',
      ],
    ),
  ],
  imagePath: 'lib/assets/tarihiyerler/pasalar.png',
  iconPath: 'lib/assets/museum.png',
);

// Lezzet Durakları kategorisi
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
    ),
    Place(
      name: 'Lezzet Durağı',
      description: 'Yöresel tatların sunulduğu popüler bir restoran.',
      imageUrls: [
        "lib/assets/mekanlar/mekan3.png",
        "lib/assets/mekanlar/mekan4.png"
      ],
    ),
  ],
  imagePath: 'lib/assets/mekanlar/mekan.png',
  iconPath: 'lib/assets/food.png',
);

// Piknik Alanları kategorisi
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
    ),
    Place(
      name: 'Doğa Parkı',
      description: 'Doğayla iç içe piknik yapılabilecek güzel bir park.',
      imageUrls: [
        "lib/assets/piknikler/poyrazlar.png",
        "lib/assets/piknikler/sakaryatabiatpark.png",
        "lib/assets/piknikler/sapancagolu.png"
      ],
    ),
  ],
  imagePath: 'lib/assets/piknikler/sapancagolu.png',
  iconPath: 'lib/assets/picnic.png',
);

// Türbeler kategorisi
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
    ),
    Place(
      name: 'Hoca Türbesi',
      description: 'Ünlü bir din aliminin türbesi.',
      imageUrls: [
        "lib/assets/turbeler/karincalidede.png",
        "lib/assets/turbeler/sakarbaba.png",
        "lib/assets/turbeler/seyyidkaraman.png"
      ],
    ),
  ],
  imagePath: 'lib/assets/turbeler/sakarbaba.png',
  iconPath: 'lib/assets/tomb.png',
);

// Parklar kategorisi
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
    ),
    Place(
      name: 'Göl Parkı',
      description: 'Göl kenarında yer alan dinlenme ve yürüyüş parkı.',
      imageUrls: [
        "lib/assets/parklar/ormanpark.png",
        "lib/assets/parklar/serdivantepesi.png",
        "lib/assets/parklar/uzunkumpark.png"
      ],
    ),
  ],
  imagePath: 'lib/assets/parklar/uzunkumpark.png',
  iconPath: 'lib/assets/parc.png',
);

// Müzeler kategorisi
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
    ),
    Place(
      name: 'Tarih Müzesi',
      description: 'Bölgenin tarihine ışık tutan bir müze.',
      imageUrls: [
        'lib/assets/muzeler/alifuat.png',
        'lib/assets/muzeler/deprem.png',
        'lib/assets/muzeler/sakaryamuzesi.png',
      ],
    ),
  ],
  imagePath: 'lib/assets/muzeler/deprem.png',
  iconPath: 'lib/assets/museum.png',
);

// Tüm kategorileri bir listeye ekleyin
final List<Category> categories = [
  camiler,
  tarihiYerler,
  lezzetDuraklari,
  piknikAlanlari,
  turbeler,
  parklar,
  muzeler,
];
