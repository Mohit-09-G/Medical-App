import 'package:get/get.dart';

class DoctorFavouriteController extends GetxController {
  RxBool isFirstButtonPressed = true.obs;
  RxBool isSecondButtonPressed = false.obs;
  RxString currentSection = 'Doctors'.obs;
  RxList itemList = [
    "Dermato-Endocrinology",
    "Cosmetic Bioengineering",
    "Dermato-Genetics",
    "Solar Dermatology"
  ].obs;
  void toggleFirstButtonState() {
    isFirstButtonPressed.value = true;
    isSecondButtonPressed.value = false;
    currentSection.value = 'Doctors';
  }

  void toggleSecondButtonState() {
    isFirstButtonPressed.value = false;
    isSecondButtonPressed.value = true;
    currentSection.value = 'Services';
  }
}
