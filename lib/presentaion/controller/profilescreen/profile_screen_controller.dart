import 'package:get/get.dart';
import 'package:health_app/config/app_routes.dart';

class ProfileScreenController extends GetxController {
  void navigateToprofiledata() {
    Get.toNamed(AppRoutes.updateProfile);
  }
}
