import 'package:get/get.dart';
import 'package:health_app/di/injection.dart';
import 'package:health_app/presentaion/controller/doctorscreen/doctorcreen_controller.dart';

class DoctorScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DoctorcreenController>(() => getIt<DoctorcreenController>());
  }
}
