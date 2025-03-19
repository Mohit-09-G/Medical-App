import 'package:get_it/get_it.dart';
import 'package:health_app/presentaion/controller/splash/splash_cotroller.dart';
import 'package:health_app/presentaion/controller/welcome/welcomescreen_controller.dart';

final GetIt getIt = GetIt.instance;
Future<void> init() async {
  getIt.registerFactory<SplashCotroller>(() => SplashCotroller());
  getIt.registerFactory<WelcomescreenController>(
      () => WelcomescreenController());
}
