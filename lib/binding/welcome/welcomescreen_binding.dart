import 'package:get/get.dart';
import 'package:health_app/presentaion/controller/welcome/welcomescreen_controller.dart';

class WelcomescreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WelcomescreenController>(() => WelcomescreenController());
  }
}
