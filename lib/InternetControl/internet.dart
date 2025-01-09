// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:travelapp/InternetControl/internet_control.dart';
// import 'package:travelapp/pages/home_page.dart';

// class NoInternetPage extends StatelessWidget {
//   final NetworkController networkController = Get.find();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('No Internet'),
//       ),
//       body: Center(
//         child: Obx(() {
//           // Bağlantı durumunun son elemanına bakarak kontrol et
//           final lastStatus = networkController.connectionHistory.isNotEmpty
//               ? networkController.connectionHistory.last
//               : ConnectivityResult.none;

//           if (lastStatus != ConnectivityResult.none) {
//             // Bağlantı geri gelirse ana sayfaya yönlendir
//             Future.microtask(() => Get.offAll(HomePage()));
//           }
//           return Text('No Internet Connection');
//         }),
//       ),
//     );
//   }
// }
