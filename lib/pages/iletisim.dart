import 'package:flutter/material.dart';

class Iletisim extends StatelessWidget {
  const Iletisim({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        centerTitle: true,
        title: Text("İletişim Sayfası"),
      ),
    );
  }
}
