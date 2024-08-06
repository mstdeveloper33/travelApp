import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseApi {
  final _firebaseMessaging = FirebaseMessaging.instance;

  Future<void> initNotifications() async {
    // İzin isteme
    await _firebaseMessaging.requestPermission();

    // Token alma
    final fCMToken = await _firebaseMessaging.getToken();
    print("Token: $fCMToken");

    // Kullanıcıyı "news" topic'ine abone etme
    await _firebaseMessaging.subscribeToTopic('news');
  }
}
