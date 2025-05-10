import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:health_app/config/validator_case.dart';
import 'package:health_app/data/api/doctor_service.dart';

class DialogContoller extends GetxController {
  final TextEditingController docnameController = TextEditingController();
  final TextEditingController docspecialityController = TextEditingController();
  final TextEditingController doceducationController = TextEditingController();

  final RxString doctornameerror = RxString('');
  final RxString doctorspecialtyerror = RxString('');
  final RxString doctoreducationrror = RxString('');
  final DoctorService doctorService = DoctorService();

  final RxBool isFormValid = false.obs;

  void validateForm() {
    isFormValid.value = doctornameerror.value.isEmpty &&
        doctorspecialtyerror.value.isEmpty &&
        doctoreducationrror.value.isEmpty &&
        docnameController.text.isNotEmpty &&
        docspecialityController.text.isNotEmpty &&
        doceducationController.text.isNotEmpty;
  }

  void validateName(String value) {
    doctornameerror.value = Validators.validateName(value) ?? "";
    validateForm();
  }

  void validateSpeciality(String value) {
    doctorspecialtyerror.value = Validators.validateName(value) ?? "";
    validateForm();
  }

  void validateeducation(String value) {
    doctoreducationrror.value = Validators.validateName(value) ?? "";
    validateForm();
  }

  Future<void> newEntryDailog() async {
    validateForm();
    try {
      await doctorService.insertDialogData(docnameController.text,
          docspecialityController.text, doceducationController.text);
      Get.snackbar("Success", "Doctor added successfully!");
      claerall();
    } catch (e) {
      Get.snackbar("Error", "Failed to add doctor: $e");
    }
  }

  claerall() {
    docnameController.clear();
    docspecialityController.clear();
    doceducationController.clear();
  }
}
