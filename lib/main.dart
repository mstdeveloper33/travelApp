import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:travelapp/pages/home_page.dart';

import 'package:travelapp/theme/theme_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: SeyahatUygulamasi(),
    ),
  );
}

class SeyahatUygulamasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Seyahat Uygulaması',
      theme: Provider.of<ThemeProvider>(context).themeData,
      home: HomePage(),
    );
  }
}
