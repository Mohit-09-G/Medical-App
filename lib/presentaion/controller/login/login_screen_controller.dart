import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/config/app_routes.dart';

class LoginScreenController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final RxString emailError = RxString('');

  void back() {
    Get.back();
  }

  void navigateToSignup() {
    Get.toNamed(AppRoutes.signUpScreen);
  }

  void navigateToforget() {
    Get.toNamed(AppRoutes.forgetPasswordScreen);
  }
}
