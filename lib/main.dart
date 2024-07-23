import 'package:flutter/material.dart';


import 'package:travelapp/pages/home_page.dart';


void main() {
  runApp(SeyahatUygulamasi());
}

class SeyahatUygulamasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Seyahat Uygulaması',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
