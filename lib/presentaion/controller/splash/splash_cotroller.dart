import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:health_app/config/app_routes.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SplashCotroller extends GetxController {
  @override
  void onInit() {
    splashtime();
    super.onInit();
  }

  void splashtime() async {
    final user = FirebaseAuth.instance.currentUser;

    await Future.delayed(Duration(seconds: 3));

    if (user != null) {
      Get.offAndToNamed(AppRoutes.mainScreen);
    } else {
      Get.offAndToNamed(AppRoutes.loginScreen);
    }
  }
}
