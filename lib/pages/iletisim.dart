import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:travelapp/pages/drawermenu.dart';
import 'package:travelapp/theme/dark_theme.dart';
import 'package:travelapp/theme/theme_provider.dart';

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
            Card(
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
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  backgroundColor: Colors.transparent,
                  collapsedBackgroundColor: Colors.transparent,
                  leading: CircleAvatar(
                    child: Image(
                      image: AssetImage("lib/assets/iletisim/phone.png"),
                    ),
                  ),
                  title: Text(
                    "Santral",
                    style: TextStyle(
                      fontSize: 25,
                      color: themeProvider.isDarkTheme
                          ? darkTheme.textTheme.bodyLarge?.color
                          : lightTheme.textTheme.bodyLarge?.color,
                    ),
                  ),
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Card(
                        color: Colors.grey,
                        child: ListTile(
                          title: Text(
                            "44 44 054",
                            style: TextStyle(fontSize: 20),
                          ),
                          tileColor: Colors.transparent,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Card(
                        color: Colors.grey,
                        child: ListTile(
                          title: Text(
                            "0264 289 30 00",
                            style: TextStyle(fontSize: 20),
                          ),
                          tileColor: Colors.transparent,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
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
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  backgroundColor: Colors.transparent,
                  collapsedBackgroundColor: Colors.transparent,
                  leading: CircleAvatar(
                    child: Image(
                      image: AssetImage("lib/assets/iletisim/target.png"),
                    ),
                  ),
                  title: Text(
                    "Çözüm Masası",
                    style: TextStyle(
                      fontSize: 25,
                      color: themeProvider.isDarkTheme
                          ? darkTheme.textTheme.bodyLarge?.color
                          : lightTheme.textTheme.bodyLarge?.color,
                    ),
                  ),
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Card(
                        color: Colors.grey,
                        child: ListTile(
                          title: Text(
                            "153",
                            style: TextStyle(fontSize: 25),
                          ),
                          tileColor: Colors.transparent,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              shape: RoundedRectangleBorder(
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
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  //backgroundColor: Colors.transparent,
                  //collapsedBackgroundColor: Colors.transparent,
                  leading: CircleAvatar(
                    child: Image(
                      image: AssetImage("lib/assets/iletisim/printer.png"),
                    ),
                  ),
                  title: Text(
                    "Yazışma Adresi",
                    style: TextStyle(
                      fontSize: 25,
                      color: themeProvider.isDarkTheme
                          ? darkTheme.textTheme.bodyLarge?.color
                          : lightTheme.textTheme.bodyLarge?.color,
                    ),
                  ),
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Card(
                        color: Colors.grey,
                        child: ListTile(
                          title: Text(
                              "Kavaklar Caddesi No:7 54100 Adapazarı/SAKARYA"),
                          tileColor: Colors.transparent,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
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
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  backgroundColor: Colors.transparent,
                  collapsedBackgroundColor: Colors.transparent,
                  leading: CircleAvatar(
                    child: Image(
                      image: AssetImage("lib/assets/iletisim/adress.png"),
                    ),
                  ),
                  title: Text(
                    "KEP Adresi",
                    style: TextStyle(
                      fontSize: 25,
                      color: themeProvider.isDarkTheme
                          ? darkTheme.textTheme.bodyLarge?.color
                          : lightTheme.textTheme.bodyLarge?.color,
                    ),
                  ),
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Card(
                        color: Colors.grey,
                        child: ListTile(
                          title: Text("sbb@hs01.kep.tr"),
                          tileColor: Colors.transparent,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
