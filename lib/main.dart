import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travelapp/InternetControl/internet_control.dart';
import 'package:travelapp/firebase_options.dart';
import 'package:travelapp/pages/splash.dart';
import 'package:travelapp/provider/favorite_provider.dart';
import 'package:travelapp/servis/firebaseapi.dart';
import 'package:travelapp/theme/dark_theme.dart';
import 'package:travelapp/theme/light_theme.dart';

import 'package:travelapp/theme/theme_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await FirebaseApi().initNotifications();
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
      home: SplashScreen(),
    );
  }
}
