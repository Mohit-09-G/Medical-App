import 'package:get/get.dart';
import 'package:health_app/di/injection.dart';
import 'package:health_app/presentaion/controller/mainscreen/mainscreen_controller.dart';

class MainscreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainscreenController>(() => getIt<MainscreenController>());
  }
}
