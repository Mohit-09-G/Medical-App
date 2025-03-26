import 'package:get_it/get_it.dart';
import 'package:health_app/presentaion/controller/doctor-info/doctor_info_controller.dart';
import 'package:health_app/presentaion/controller/doctorratingscreen/doctor_rating_controller.dart';
import 'package:health_app/presentaion/controller/doctorscreen/doctorcreen_controller.dart';
import 'package:health_app/presentaion/controller/forgetpassword/forgetpassword_controller.dart';
import 'package:health_app/presentaion/controller/home/home_screen_controller.dart';
import 'package:health_app/presentaion/controller/login/login_screen_controller.dart';
import 'package:health_app/presentaion/controller/mainscreen/mainscreen_controller.dart';
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
  getIt.registerFactory<MainscreenController>(() => MainscreenController());
  getIt.registerFactory<DoctorcreenController>(() => DoctorcreenController());
  getIt.registerFactory<DoctorInfoController>(() => DoctorInfoController());
  getIt.registerFactory<DoctorRatingController>(() => DoctorRatingController());
}
