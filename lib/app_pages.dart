import 'package:get/route_manager.dart';
import 'package:health_app/binding/docotor_screen/doctor_screen_binding.dart';
import 'package:health_app/binding/doctor-rating/doctor_rating_binding.dart';
import 'package:health_app/binding/doctor_favourite/doctor_favourite_binding.dart';
import 'package:health_app/binding/forgotpassword/forgotassword_binding.dart';
import 'package:health_app/binding/home/home_screen_binding.dart';
import 'package:health_app/binding/login/login_screen_binding.dart';
import 'package:health_app/binding/mainscreen/mainscreen_binding.dart';
import 'package:health_app/binding/profilescreen/profile_screen_binding.dart';
import 'package:health_app/binding/profilescreen/updateProfile/update_profile_binding.dart';
import 'package:health_app/binding/signup/signup_binding.dart';
import 'package:health_app/binding/splash/splash_binding.dart';
import 'package:health_app/binding/welcome/welcomescreen_binding.dart';
import 'package:health_app/config/app_routes.dart';

import 'package:health_app/presentaion/mainscreen/mainscreen.dart';
import 'package:health_app/presentaion/screens/doctor-info/doctor_info_screen.dart';
import 'package:health_app/presentaion/screens/doctorscreens/doctor_favourite/doctor_favorite_screen.dart';
import 'package:health_app/presentaion/screens/doctorscreens/doctor_rating/doctors_rating.dart';
import 'package:health_app/presentaion/screens/doctorscreens/doctor_screen.dart';
import 'package:health_app/presentaion/screens/forgetpassword/forgetpassword_screeen.dart';
import 'package:health_app/presentaion/screens/home/home_screen.dart';
import 'package:health_app/presentaion/screens/login/login_screen.dart';
import 'package:health_app/presentaion/screens/profileScreen/profile_screen.dart';
import 'package:health_app/presentaion/screens/profileScreen/updateprofile/update_profile_screen.dart';
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
        binding: ForgotasswordBinding()),
    GetPage(
        name: AppRoutes.homescreen,
        page: () => HomeScreen(),
        binding: HomeScreenBinding()),
    GetPage(
        name: AppRoutes.mainScreen,
        page: () => Mainscreen(),
        binding: MainscreenBinding()),
    GetPage(
        name: AppRoutes.doctorScreen,
        page: () => DoctorScreen(),
        binding: DoctorScreenBinding()),
    GetPage(
        name: AppRoutes.docInfo,
        page: () => DoctorInfoScreen(),
        binding: DoctorScreenBinding()),
    GetPage(
        name: AppRoutes.docRating,
        page: () => DoctorsRating(),
        binding: DoctorRatingBinding()),
    GetPage(
        name: AppRoutes.docFav,
        page: () => DoctorFavoriteScreen(),
        binding: DoctorFavouriteBinding()),
    GetPage(
        name: AppRoutes.profileScreen,
        page: () => ProfileScreen(),
        binding: ProfileScreenBinding()),
    GetPage(
        name: AppRoutes.updateProfile,
        page: () => UpdateProfileScreen(),
        binding: UpdateProfileBinding())
  ];
}
