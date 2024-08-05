import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travelapp/pages/drawermenu.dart';
import 'package:travelapp/theme/dark_theme.dart';
import 'package:travelapp/theme/theme_provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../theme/light_theme.dart';

class Iletisim extends StatefulWidget {
  const Iletisim({super.key});

  @override
  State<Iletisim> createState() => _IletisimState();
}

class _IletisimState extends State<Iletisim> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      drawer: Drawermenu(),
      appBar: AppBar(
        title: Text(
          'İLETİŞİM',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        toolbarHeight: MediaQuery.of(context).size.height / 12,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.topCenter,
              colors: [Colors.teal.shade300, Colors.blue.shade300],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            buildContactCard(
              context,
              themeProvider,
              'Santral',
              'lib/assets/iletisim/phone.png',
              [
                buildContactTile(
                  '44 44 054',
                  Uri.parse('tel:+4444054'),
                ),
                buildContactTile(
                  '0264 289 30 00',
                  Uri.parse('tel:+902642893000'),
                ),
              ],
            ),
            SizedBox(height: 20),
            buildContactCard(
              context,
              themeProvider,
              'Çözüm Masası',
              'lib/assets/iletisim/target.png',
              [
                buildContactTile(
                  '153',
                  Uri.parse('tel:153'),
                ),
              ],
            ),
            SizedBox(height: 20),
            buildContactCard(
              context,
              themeProvider,
              'Yazışma Adresi',
              'lib/assets/iletisim/printer.png',
              [
                buildContactTile(
                  'Kavaklar Caddesi No:7 54100 Adapazarı/SAKARYA',
                  Uri.parse(
                      'https://www.google.com/maps/search/?api=1&query=40.777998,30.403223'),
                ),
              ],
            ),
            SizedBox(height: 20),
            buildContactCard(
              context,
              themeProvider,
              'KEP Adresi',
              'lib/assets/iletisim/adress.png',
              [
                buildContactTile(
                  'sbb@hs01.kep.tr',
                  Uri.parse('mailto:sbb@hs01.kep.tr'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildContactCard(BuildContext context, ThemeProvider themeProvider,
      String title, String iconPath, List<Widget> children) {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      color: Colors.transparent,
      child: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: ExpansionTile(
          initiallyExpanded: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          backgroundColor: Colors.transparent,
          collapsedBackgroundColor: Colors.transparent,
          leading: CircleAvatar(
            child: Image(
              image: AssetImage(iconPath),
            ),
          ),
          title: Text(
            title,
            style: TextStyle(
              fontSize: 25,
              color: themeProvider.isDarkTheme
                  ? darkTheme.textTheme.bodyLarge?.color
                  : lightTheme.textTheme.bodyLarge?.color,
            ),
          ),
          children: children,
        ),
      ),
    );
  }

  Widget buildContactTile(String text, Uri? url) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Card(
        color: Colors.grey,
        child: ListTile(
          title: Text(
            text,
            style: TextStyle(fontSize: 20),
          ),
          tileColor: Colors.transparent,
          onTap: url != null ? () => _launchUrl(url) : null,
        ),
      ),
    );
  }

  void _launchUrl(Uri url) async {
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
