import 'package:get/get.dart';
import 'package:health_app/config/app_routes.dart';

class WelcomescreenController extends GetxController {
  void moveTOlogin() {
    Get.toNamed(AppRoutes.loginScreen);
  }

  void moveToSingup() {
    Get.toNamed(AppRoutes.signUpScreen);
  }
}
