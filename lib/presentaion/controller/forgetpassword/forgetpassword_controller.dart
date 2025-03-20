import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/config/validator_case.dart';

class ForgetpasswordController extends GetxController {
  final TextEditingController confirmapasswordController =
      TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final RxString passwordError = RxString('');
  final RxString confirmPasswordError = RxString('');

  RxBool isFormValid = true.obs;
  RxBool obscurePassword = true.obs;
  RxBool obscurePasswordConfirm = true.obs;

  void validForm() {
    isFormValid.value = passwordError.value.isEmpty &&
        confirmPasswordError.value.isEmpty &&
        confirmapasswordController.text.isNotEmpty &&
        passwordController.text.isNotEmpty;
  }

  void validatePassword(String value) {
    passwordError.value = Validators.validatePassword(value) ?? '';
    validForm();
  }

  void validateconfrimPassword(String value) {
    confirmPasswordError.value = Validators.validatePassword(value) ?? '';
    validForm();
  }

  void togglePasswordVisibility2() {
    obscurePasswordConfirm.value = !obscurePasswordConfirm.value;
  }

  void togglePasswordVisibility() {
    obscurePassword.value = !obscurePassword.value;
  }

  bool checkPasswordMatch() {
    if (passwordController.text.isEmpty ||
        confirmapasswordController.text.isEmpty) {
      return false;
    }

    if (passwordController.text == confirmapasswordController.text) {
      return true;
    }

    return false;
  }

  void back() {
    Get.back();
  }

  void clearAllFields() {
    passwordController.clear();
    confirmapasswordController.clear();
    passwordError.value = '';
    confirmPasswordError.value = '';
    isFormValid.value = true;
  }
}
