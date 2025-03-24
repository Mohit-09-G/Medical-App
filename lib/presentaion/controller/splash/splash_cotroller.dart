import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:health_app/config/app_routes.dart';

class SplashCotroller extends GetxController {
  @override
  void onInit() {
    splashtime();
    super.onInit();
  }

  void splashtime() async {
    await Future.delayed(Duration(seconds: 3));
    Get.offAndToNamed(AppRoutes.mainScreen);
  }
}
