import 'package:get/get.dart';
import 'package:health_app/di/injection.dart';
import 'package:health_app/presentaion/controller/doctorratingscreen/doctor_rating_controller.dart';

class DoctorRatingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DoctorRatingController>(() => getIt<DoctorRatingController>());
  }
}
