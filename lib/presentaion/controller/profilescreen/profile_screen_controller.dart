import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:health_app/config/app_routes.dart';

class ProfileScreenController extends GetxController {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  void navigateToprofiledata() {
    Get.toNamed(AppRoutes.updateProfile);
  }

  void logout() async {
    await firebaseAuth.signOut();
    Get.offAllNamed(AppRoutes.loginScreen);
  }
}
