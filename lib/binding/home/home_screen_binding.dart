import 'package:get/get.dart';
import 'package:health_app/di/injection.dart';
import 'package:health_app/presentaion/controller/home/home_screen_controller.dart';

class HomeScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeScreenController>(() => getIt<HomeScreenController>());
  }
}
