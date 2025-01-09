// import 'dart:async';
// import 'package:get/get.dart';
// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:flutter/services.dart';

// class NetworkController extends GetxController {
//   // Son bağlantı durumu
//   var connectionStatus = ConnectivityResult.none.obs;
//   final Connectivity _connectivity = Connectivity();
//   late StreamSubscription<ConnectivityResult> _connectivitySubscription;

//   @override
//   void onInit() {
//     super.onInit();
//     initConnectivity();
//     _connectivitySubscription = _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
//   }

//   @override
//   void onClose() {
//     _connectivitySubscription.cancel();
//     super.onClose();
//   }

//   Future<void> initConnectivity() async {
//     try {
//       var result = await _connectivity.checkConnectivity();
//       _updateConnectionStatus(result);
//     } on PlatformException catch (e) {
//       print('Bağlantı durumu kontrol edilemedi: $e');
//     }
//   }

//   void _updateConnectionStatus(ConnectivityResult result) {
//     connectionStatus.value = result;
//     print('Bağlantı durumu güncellendi: $result');
//   }
// }
