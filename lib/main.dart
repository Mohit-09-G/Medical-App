import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:health_app/app_pages.dart';
import 'package:health_app/binding/splash/splash_binding.dart';
import 'package:health_app/data/services/notification_services.dart';

import 'package:health_app/di/injection.dart' as get_it;
import 'package:health_app/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  NotificationServices().initNotification();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).whenComplete(
    () {
      if (kDebugMode) {
        print("Firebase has been initialised");
      }
    },
  );
  await get_it.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      initialBinding: SplashBinding(),
      getPages: AppPages.routes,
    );
  }
}
