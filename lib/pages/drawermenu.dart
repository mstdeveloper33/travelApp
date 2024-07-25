import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/pages/favorite.dart';
import 'package:travelapp/pages/home_page.dart';
import 'package:travelapp/pages/iletisim.dart';
import 'package:travelapp/pages/sakarya_hakkinda.dart';
import 'package:travelapp/pages/settings.page.dart';
import 'package:travelapp/pages/uygulama_hakkinda.dart';
import 'package:url_launcher/url_launcher.dart';

class Drawermenu extends StatefulWidget {
  const Drawermenu({super.key});

  @override
  State<Drawermenu> createState() => _DrawermenuState();
}

class _DrawermenuState extends State<Drawermenu> {
  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.inAppWebView);
    } else {
      debugPrint("Gönderdiğiniz Linki Açamıyorum");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shadowColor: Colors.grey,
      elevation: 50,
      width: MediaQuery.of(context).size.width / 1.7,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.topCenter,
              tileMode: TileMode.clamp,
              colors: [Colors.teal.shade300, Colors.blue.shade300]),
        ),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: DrawerHeader(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        "Sakarya'yı Gezelim",
                        style: TextStyle(
                          fontSize: 20,
                          color: Theme.of(context).colorScheme.inverseSurface,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Image.asset(
                        "lib/assets/travel.png",
                        height: 70,
                        width: 70,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: DottedDecoration(
                    color: Colors.black,
                    shape: Shape.box,
                    borderRadius: BorderRadius.circular(20)),
                child: ListTile(
                  leading: Icon(
                    Icons.home,
                    size: 25,
                    color: Theme.of(context).colorScheme.inverseSurface,
                  ),
                  title: Text(
                    "ANASAYFA",
                    style: TextStyle(
                        fontSize: 16,
                        color: Theme.of(context).colorScheme.inverseSurface),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: DottedDecoration(
                    color: Colors.black,
                    shape: Shape.box,
                    borderRadius: BorderRadius.circular(20)),
                child: ListTile(
                  leading: Icon(
                    Icons.settings,
                    size: 25,
                    color: Theme.of(context).colorScheme.inverseSurface,
                  ),
                  title: Text(
                    "AYARLAR",
                    style: TextStyle(
                        fontSize: 16,
                        color: Theme.of(context).colorScheme.inverseSurface),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => SettingsPage(),
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: ListTile(
                  leading: Icon(
                    Icons.favorite,
                    size: 25,
                    color: Theme.of(context).colorScheme.inverseSurface,
                  ),
                  title: Text(
                    "FAVORİLER",
                    style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.inverseSurface,
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => FavoritesPage(),
                      ),
                    );
                  },
                ),
                decoration: DottedDecoration(
                    color: Colors.black,
                    shape: Shape.box,
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    size: 25,
                    color: Theme.of(context).colorScheme.inverseSurface,
                  ),
                  title: Text(
                    "İLETİŞİM",
                    style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.inverseSurface,
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Iletisim(),
                      ),
                    );
                  },
                ),
                decoration: DottedDecoration(
                    color: Colors.black,
                    shape: Shape.box,
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: ListTile(
                  leading: Icon(
                    Icons.info,
                    size: 25,
                    color: Theme.of(context).colorScheme.inverseSurface,
                  ),
                  title: Text(
                    "UYGULAMA HAKKINDA",
                    style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.inverseSurface,
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => UygulamaHakkinda(),
                      ),
                    );
                  },
                ),
                decoration: DottedDecoration(
                    color: Colors.black,
                    shape: Shape.box,
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: ListTile(
                  leading: Icon(
                    Icons.location_city,
                    size: 25,
                    color: Theme.of(context).colorScheme.inverseSurface,
                  ),
                  title: Text(
                    "SAKARYA HAKKINDA",
                    style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.inverseSurface,
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => SakaryaHakkinda(),
                      ),
                    );
                  },
                ),
                decoration: DottedDecoration(
                    color: Colors.black,
                    shape: Shape.box,
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),

            // Divider(
            //   indent: 20,
            //   endIndent: 20,
            //   height: 1,
            //   color: Colors.black,
            //   thickness: 2,
            // ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 15,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: DottedDecoration(
                    color: Colors.black,
                    shape: Shape.box,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                            _launchURL("https://www.sakarya.bel.tr/");
                          },
                          child: ClipOval(
                            child: Image.asset(
                              'lib/assets/sakarya.png', // Eklemek istediğiniz resmin yolu
                              height: MediaQuery.of(context).size.height / 10,
                              width: MediaQuery.of(context).size.width / 5,
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                            _launchURL(
                                "https://x.com/Sakaryabld?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor");
                          },
                          child: Image.asset(
                            'lib/assets/media/twitter.png', // Eklemek istediğiniz resmin yolu
                            height: MediaQuery.of(context).size.height / 10,
                            width: MediaQuery.of(context).size.width / 5,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                            _launchURL("https://www.instagram.com/sakaryabld/");
                          },
                          child: Image.asset(
                            'lib/assets/media/instagram.png', // Eklemek istediğiniz resmin yolu
                            height: MediaQuery.of(context).size.height / 10,
                            width: MediaQuery.of(context).size.width / 5,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                            _launchURL(
                                "https://www.facebook.com/sakaryabld/about/?_rdr");
                          },
                          child: Image.asset(
                            'lib/assets/media/facebook.png', // Eklemek istediğiniz resmin yolu
                            height: MediaQuery.of(context).size.height / 10,
                            width: MediaQuery.of(context).size.width / 5,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
