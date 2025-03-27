import 'package:get/get.dart';
import 'package:health_app/di/injection.dart';
import 'package:health_app/presentaion/controller/doctor_favourite/doctor_favourite_controller.dart';

class DoctorFavouriteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DoctorFavouriteController>(
        () => getIt<DoctorFavouriteController>());
  }
}
