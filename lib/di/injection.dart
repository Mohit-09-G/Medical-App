import 'package:get_it/get_it.dart';
import 'package:health_app/presentaion/controller/forgetpassword/forgetpassword_controller.dart';
import 'package:health_app/presentaion/controller/home/home_screen_controller.dart';
import 'package:health_app/presentaion/controller/login/login_screen_controller.dart';
import 'package:health_app/presentaion/controller/signup/signup_controller.dart';
import 'package:health_app/presentaion/controller/splash/splash_cotroller.dart';
import 'package:health_app/presentaion/controller/welcome/welcomescreen_controller.dart';

final GetIt getIt = GetIt.instance;
Future<void> init() async {
  getIt.registerFactory<SplashCotroller>(() => SplashCotroller());
  getIt.registerFactory<WelcomescreenController>(
      () => WelcomescreenController());
  getIt.registerFactory<LoginScreenController>(() => LoginScreenController());
  getIt.registerFactory<SignupController>(() => SignupController());
  getIt.registerFactory<ForgetpasswordController>(
      () => ForgetpasswordController());
  getIt.registerFactory<HomeScreenController>(() => HomeScreenController());
}
