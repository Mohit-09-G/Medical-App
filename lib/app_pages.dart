import 'package:get/route_manager.dart';
import 'package:health_app/binding/splash/splash_binding.dart';
import 'package:health_app/binding/welcome/welcomescreen_binding.dart';
import 'package:health_app/config/app_routes.dart';
import 'package:health_app/presentaion/screens/splash/splash_screen.dart';
import 'package:health_app/presentaion/screens/welcome/welcomescreen.dart';

class AppPages {
  static final routes = [
    GetPage(
        name: AppRoutes.splash,
        page: () => SplashScreen(),
        binding: SplashBinding()),
    GetPage(
        name: AppRoutes.welcomeScreen,
        page: () => Welcomescreen(),
        binding: WelcomescreenBinding())
  ];
}
