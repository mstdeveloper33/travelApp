import 'package:flutter/material.dart';
import 'package:travelapp/pages/favorite.dart';
import 'package:travelapp/pages/settings.page.dart';
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
        // color: Colors.grey.shade400,
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    "lib/assets/Preview.png",
                  ),
                ),
              ),
              child: null,
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                size: 25,
                color: Theme.of(context).colorScheme.inverseSurface,
              ),
              title: Text(
                "AYARLAR",
                style: TextStyle(
                    fontSize: 18,
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
            ListTile(
              leading: Icon(
                Icons.favorite,
                size: 25,
                color: Theme.of(context).colorScheme.inverseSurface,
              ),
              title: Text(
                "FAVORİLER",
                style: TextStyle(
                  fontSize: 18,
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
            ListTile(
              leading: Icon(
                Icons.favorite,
                size: 25,
                color: Theme.of(context).colorScheme.inverseSurface,
              ),
              title: Text(
                "İLETİŞİM",
                style: TextStyle(
                  fontSize: 18,
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
            ListTile(
              leading: Icon(
                Icons.favorite,
                size: 25,
                color: Theme.of(context).colorScheme.inverseSurface,
              ),
              title: Text(
                "UYGULAMA HAKKINDA",
                style: TextStyle(
                  fontSize: 18,
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
            ListTile(
              leading: Icon(
                Icons.favorite,
                size: 25,
                color: Theme.of(context).colorScheme.inverseSurface,
              ),
              title: Text(
                "SAKARYA HAKKINDA",
                style: TextStyle(
                  fontSize: 18,
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
            SizedBox(
              height: MediaQuery.of(context).size.height / 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
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
                    padding: const EdgeInsets.all(10.0),
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
                    padding: const EdgeInsets.all(10.0),
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
                    padding: const EdgeInsets.all(10.0),
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
            )
          ],
        ),
      ),
    );
  }
}
