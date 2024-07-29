import 'package:flutter/material.dart';
import 'package:travelapp/pages/drawermenu.dart';

class EtkinliklerPage extends StatefulWidget {
  const EtkinliklerPage({super.key});

  @override
  State<EtkinliklerPage> createState() => _EtkinliklerPageState();
}

class _EtkinliklerPageState extends State<EtkinliklerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawermenu(),
      appBar: AppBar(
        title: Text(
          'ETKİNLİKLER',
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
    );
  }
}
