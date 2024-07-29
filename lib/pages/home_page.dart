import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';
import 'package:travelapp/pages/anasayfa.dart';
import 'package:travelapp/pages/etkinlikler.dart';
import 'package:travelapp/pages/favorite.dart';
import 'package:travelapp/pages/search.dart';
import 'package:travelapp/pages/settings.page.dart';
import 'package:travelapp/theme/theme_provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const List<Widget> _pages = <Widget>[
    MainPage(), // Bu sayfa henüz tanımlanmadı, istediğiniz sayfayı ekleyin
    FavoritesPage(),
    SearchPage(),
    EtkinliklerPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: GNav(
          tabBackgroundGradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.topCenter,
              tileMode: TileMode.clamp,
              colors: [Colors.teal.shade600, Colors.blue.shade600]),
          tabBorder: Border.all(color: Colors.grey.shade800),
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          tabBorderRadius: 15,
          style: GnavStyle.google,
          tabActiveBorder: Border.all(
            color: Colors.white.withOpacity(0.5),
          ),
          curve: Curves.fastOutSlowIn,
          iconSize: 24,
          duration: Duration(milliseconds: 300),
          backgroundColor:
              themeProvider.isDarkTheme ? Colors.black45 : Colors.transparent,
          color: themeProvider.isDarkTheme
              ? Colors.grey.shade500
              : Colors.grey.shade600,
          activeColor: Colors.white,
          tabBackgroundColor: themeProvider.isDarkTheme
              ? Colors.blueGrey.shade800
              : Colors.grey.shade200,
          gap: 8,
          padding: EdgeInsets.all(8),
          tabs: [
            GButton(
              icon: Icons.home,
              text: "Anasayfa",
              textColor:
                  themeProvider.isDarkTheme ? Colors.white : Colors.white,
              onPressed: () => _onItemTapped(0),
            ),
            GButton(
              icon: Icons.favorite,
              text: "Favoriler",
              textColor:
                  themeProvider.isDarkTheme ? Colors.white : Colors.white,
              onPressed: () => _onItemTapped(1),
            ),
            GButton(
              icon: Icons.search,
              text: "Keşfet",
              textColor:
                  themeProvider.isDarkTheme ? Colors.white : Colors.white,
              onPressed: () => _onItemTapped(2),
            ),
            GButton(
              icon: Icons.event_note_outlined,
              text: "Etkinlikler",
              textColor:
                  themeProvider.isDarkTheme ? Colors.white : Colors.white,
              onPressed: () => _onItemTapped(3),
            ),
          ],
        ),
      ),
    );
  }
}
