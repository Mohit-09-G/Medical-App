import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/config/app_routes.dart';
import 'package:health_app/config/validator_case.dart';

class SignupController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController dateController = TextEditingController();

  final RxString emailError = RxString('');
  final RxString nameError = RxString('');
  final RxString paswordError = RxString('');
  final RxString mobileError = RxString('');
  final RxString dateError = RxString('');

  final RxBool isFormValid = false.obs;

  final RxBool obscurePassword = true.obs;

  void validateForm() {
    isFormValid.value = nameError.value.isEmpty &&
        paswordError.value.isEmpty &&
        emailError.value.isEmpty &&
        mobileError.value.isEmpty &&
        dateError.value.isEmpty &&
        nameController.text.isNotEmpty &&
        passwordController.text.isNotEmpty &&
        emailController.text.isNotEmpty &&
        mobileController.text.isNotEmpty &&
        dateController.text.isNotEmpty;
  }

  void validateName(String value) {
    nameError.value = Validators.validateName(value) ?? "";
    validateForm();
  }

  void validatePassword(String value) {
    paswordError.value = Validators.validatePassword(value) ?? "";
    validateForm();
  }

  void validateEmail(String value) {
    emailError.value = Validators.validateEmail(value) ?? "";
    validateForm();
  }

  void validateMobile(String value) {
    mobileError.value = Validators.validateMobile(value) ?? "";
    validateForm();
  }

  void validateDOb(String value) {
    dateError.value = Validators.validateDOB(value) ?? "";
    validateForm();
  }

  void back() {
    Get.back();
  }

  void navigateToLogin() {
    Get.offAllNamed(AppRoutes.loginScreen);
  }

  void togglePasswordVisibility() {
    obscurePassword.value = !obscurePassword.value;
  }

  void clearAllFields() {
    nameController.clear();
    passwordController.clear();
    emailController.clear();
    mobileController.clear();
    dateController.clear();

    nameError.value = '';
    paswordError.value = '';
    emailError.value = '';
    mobileError.value = '';
    dateError.value = '';

    isFormValid.value = false;
  }

  void datePicker() async {
    final DateTime? selectedDate = await showDatePicker(
      context: Get.context!,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
      initialDate: DateTime.now(),
    );

    if (selectedDate != null) {
      final String formattedDate =
          "${selectedDate.day.toString().padLeft(2, '0')}/"
          "${selectedDate.month.toString().padLeft(2, '0')}/"
          "${selectedDate.year.toString().substring(2)}";

      dateController.text = formattedDate;
    }
  }
}
