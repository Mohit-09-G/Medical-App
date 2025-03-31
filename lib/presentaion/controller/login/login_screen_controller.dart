import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/config/app_routes.dart';
import 'package:health_app/config/validator_case.dart';
import 'package:health_app/domain/usecases/do_login_with_emailandpassword.dart';

class LoginScreenController extends GetxController {
  final DoLoginWithEmailandpassword doLoginWithEmailandpassword;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final RxString emailError = RxString('');
  final RxString passwordError = RxString('');

  final RxBool isFormValid = false.obs;
  final RxBool obscurePassword = true.obs;

  LoginScreenController({required this.doLoginWithEmailandpassword});

  void validateForm() {
    isFormValid.value = emailError.value.isEmpty &&
        passwordError.value.isEmpty &&
        emailController.text.isNotEmpty &&
        passwordController.text.isNotEmpty;
  }

  void validateEmailorNumber(String value) {
    emailError.value = Validators.validateEmail(value) ?? '';
    validateForm();
  }

  void validatePassword(String value) {
    passwordError.value = Validators.validatePassword(value) ?? '';
    validateForm();
  }

  void back() {
    Get.back();
  }

  void navigateToSignup() {
    Get.toNamed(AppRoutes.signUpScreen);
  }

  void navigateToforget() {
    Get.toNamed(AppRoutes.forgetPasswordScreen);
  }

  void navigateToHome() {
    Get.offAllNamed(AppRoutes.mainScreen);
  }

  void togglePasswordVisibility() {
    obscurePassword.value = !obscurePassword.value;
  }

  void clearAllFields() {
    passwordController.clear();
    emailController.clear();
    passwordError.value = '';
    emailError.value = '';
    isFormValid.value = true;
  }

  Future<void> signInWithEmailAndPassword(
      String username, String password) async {
    try {
      final result =
          await doLoginWithEmailandpassword.execute(username, password);
      if (result['success'] == true) {
        Get.offAllNamed(AppRoutes.mainScreen);
        Get.snackbar('success', 'signed in succefull');
      } else {
        Get.snackbar('fail', 'sign in fail');
      }
    } catch (e) {
      Get.snackbar(
          'Error', 'An error occurred while signing in: ${e.toString()}');
    }
  }
}
