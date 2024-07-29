import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travelapp/pages/drawermenu.dart';
import 'package:travelapp/theme/theme_provider.dart';
import 'package:url_launcher/url_launcher.dart';

class SakaryaHakkinda extends StatelessWidget {
  const SakaryaHakkinda({super.key});

  Future<void> _launchURLBaskan(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.inAppWebView);
    } else {
      debugPrint("Gönderdiğiniz Linki Açamıyorum");
    }
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      drawer: Drawermenu(),
      appBar: AppBar(
        title: Text(
          'BAŞKANDAN MESAJ',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        toolbarHeight: MediaQuery.of(context).size.height / 12,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.topCenter,
              colors: [Colors.teal.shade300, Colors.blue.shade300],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: GestureDetector(
          onTap: () {
            _launchURLBaskan("https://www.sakarya.bel.tr/tr/Baskanlik/Baskan");
          },
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        ClipOval(
                          child: Image.asset(
                            'lib/assets/yusuf_alemdar.png', // Resim yolunu doğrulayın
                            height: MediaQuery.of(context).size.height / 10,
                            width: MediaQuery.of(context).size.width / 5,
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              "Başkandan Mesaj",
                              style: TextStyle(
                                color: themeProvider.isDarkTheme
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
