import 'dart:async';


import 'package:flutter/material.dart';
import 'package:travelapp/pages/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 1), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // color: Colors.white,
        child: Center(
            child: Container(
          margin: EdgeInsets.all(150),
          child: Image.asset(
            "lib/assets/sakarya.png",
            fit: BoxFit.contain,
          ),
        )),
      ),
    );
  }
}