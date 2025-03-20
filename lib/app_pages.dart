import 'package:get/route_manager.dart';
import 'package:health_app/binding/forgotpassword/forgotassword_binding.dart';
import 'package:health_app/binding/login/login_screen_binding.dart';
import 'package:health_app/binding/signup/signup_binding.dart';
import 'package:health_app/binding/splash/splash_binding.dart';
import 'package:health_app/binding/welcome/welcomescreen_binding.dart';
import 'package:health_app/config/app_routes.dart';
import 'package:health_app/presentaion/screens/forgetpassword/forgetpassword_screeen.dart';
import 'package:health_app/presentaion/screens/login/login_screen.dart';
import 'package:health_app/presentaion/screens/signup/sign_up_screen.dart';
import 'package:health_app/presentaion/screens/splash/splash_screen.dart';
import 'package:health_app/presentaion/screens/welcome/welcomescreen.dart';

class AppPages {
  static final routes = [
    GetPage(
        name: AppRoutes.splash,
        page: () => SplashScreen(),
        binding: SplashBinding()),
    GetPage(
        name: AppRoutes.welcomeScreen,
        page: () => Welcomescreen(),
        binding: WelcomescreenBinding()),
    GetPage(
        name: AppRoutes.loginScreen,
        page: () => LoginScreen(),
        binding: LoginScreenBinding()),
    GetPage(
        name: AppRoutes.signUpScreen,
        page: () => SignUpScreen(),
        binding: SignupBinding()),
    GetPage(
        name: AppRoutes.forgetPasswordScreen,
        page: () => ForgetpasswordScreeen(),
        binding: ForgotasswordBinding())
  ];
}
