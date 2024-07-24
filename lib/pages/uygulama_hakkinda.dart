import 'package:flutter/material.dart';

class UygulamaHakkinda extends StatelessWidget {
  const UygulamaHakkinda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        centerTitle: true,
        title: Text("Uygulama Hakkında"),
      ),
    );
  }
}
