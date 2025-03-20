import 'package:get/get.dart';
import 'package:health_app/di/injection.dart';
import 'package:health_app/presentaion/controller/forgetpassword/forgetpassword_controller.dart';

class ForgotasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ForgetpasswordController>(
        () => getIt<ForgetpasswordController>());
  }
}
