import 'package:get/get.dart';
import 'package:health_app/di/injection.dart';
import 'package:health_app/presentaion/controller/login/login_screen_controller.dart';

class LoginScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginScreenController>(() => getIt<LoginScreenController>());
  }
}
