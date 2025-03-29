import 'package:get/get.dart';
import 'package:health_app/di/injection.dart';
import 'package:health_app/presentaion/controller/doctor-info/doctor_info_controller.dart';

class DoctorInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DoctorInfoController>(() => getIt<DoctorInfoController>());
  }
}
