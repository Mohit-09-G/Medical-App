import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:health_app/app_pages.dart';
import 'package:health_app/binding/splash/splash_binding.dart';
import 'package:health_app/home_page.dart';
import 'package:health_app/di/injection.dart' as get_it;

void main() async {
  await get_it.inIt();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      initialBinding: SplashBinding(),
      getPages: AppPages.routes,
    );
  }
}
