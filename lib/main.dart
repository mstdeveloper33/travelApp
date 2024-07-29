import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:travelapp/pages/home_page.dart';
import 'package:travelapp/provider/favorite_provider.dart';
import 'package:travelapp/theme/dark_theme.dart';
import 'package:travelapp/theme/light_theme.dart';

import 'package:travelapp/theme/theme_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
        ),
        ChangeNotifierProvider(create: (_) => FavoriteProvider()),
      ],
      child: SeyahatUygulamasi(),
    ),
  );
}

class SeyahatUygulamasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Seyahat Uygulaması',
      theme: themeProvider.isDarkTheme ? darkTheme : lightTheme,
      home: HomePage(),
    );
  }
}
