import 'package:get/get.dart';
import 'package:health_app/di/injection.dart';
import 'package:health_app/presentaion/controller/signup/signup_controller.dart';

class SignupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignupController>(() => getIt<SignupController>());
  }
}
