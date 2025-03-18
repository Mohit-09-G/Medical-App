import 'package:get/instance_manager.dart';
import 'package:health_app/di/injection.dart';
import 'package:health_app/presentaion/controller/splash/splash_cotroller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<SplashCotroller>(getIt<SplashCotroller>());
  }
}
