import 'package:get_it/get_it.dart';
import 'package:health_app/data/api/auth_remote_data.dart';
import 'package:health_app/data/repositories/auth/auth_repository_impl.dart';
import 'package:health_app/domain/repositories/auth/auth_repository.dart';
import 'package:health_app/domain/usecases/create_account_usecases.dart';
import 'package:health_app/domain/usecases/do_login_with_emailandpassword.dart';
import 'package:health_app/presentaion/controller/doctor-info/doctor_info_controller.dart';
import 'package:health_app/presentaion/controller/doctor_favourite/doctor_favourite_controller.dart';
import 'package:health_app/presentaion/controller/doctorratingscreen/doctor_rating_controller.dart';
import 'package:health_app/presentaion/controller/doctorscreen/doctorcreen_controller.dart';
import 'package:health_app/presentaion/controller/forgetpassword/forgetpassword_controller.dart';
import 'package:health_app/presentaion/controller/home/home_screen_controller.dart';
import 'package:health_app/presentaion/controller/login/login_screen_controller.dart';
import 'package:health_app/presentaion/controller/mainscreen/mainscreen_controller.dart';
import 'package:health_app/presentaion/controller/profilescreen/profile_screen_controller.dart';
import 'package:health_app/presentaion/controller/profilescreen/updateProfile/update_profile_controller.dart';
import 'package:health_app/presentaion/controller/signup/signup_controller.dart';
import 'package:health_app/presentaion/controller/splash/splash_cotroller.dart';
import 'package:health_app/presentaion/controller/welcome/welcomescreen_controller.dart';

final GetIt getIt = GetIt.instance;
Future<void> init() async {
  getIt.registerFactory<SplashCotroller>(() => SplashCotroller());

  getIt.registerFactory<ForgetpasswordController>(
      () => ForgetpasswordController());
  getIt.registerFactory<HomeScreenController>(() => HomeScreenController());
  getIt.registerFactory<MainscreenController>(() => MainscreenController());
  getIt.registerFactory<DoctorcreenController>(() => DoctorcreenController());
  getIt.registerFactory<DoctorInfoController>(() => DoctorInfoController());
  getIt.registerFactory<DoctorRatingController>(() => DoctorRatingController());
  getIt.registerFactory<DoctorFavouriteController>(
      () => DoctorFavouriteController());
  getIt.registerFactory<ProfileScreenController>(
      () => ProfileScreenController());

  getIt.registerFactory<UpdateProfileController>(
      () => UpdateProfileController());

  //data Sources
  getIt.registerLazySingleton(() => AuthRemoteDataSOurceImpl());
  //Repositories
  getIt.registerLazySingleton<AuthRepository>(() =>
      AuthRepositoryImpl(remotedatasource: getIt<AuthRemoteDataSOurceImpl>()));

  //usecase
  getIt.registerFactory<CreateAccountUsecases>(
      () => CreateAccountUsecases(repository: getIt<AuthRepository>()));
  getIt.registerFactory<DoLoginWithEmailandpassword>(
      () => DoLoginWithEmailandpassword(repository: getIt<AuthRepository>()));
//controller using the usecases
  getIt.registerFactory<SignupController>(() =>
      SignupController(createAccountUsecases: getIt<CreateAccountUsecases>()));

  getIt.registerFactory<WelcomescreenController>(
      () => WelcomescreenController());
  getIt.registerFactory<LoginScreenController>(() => LoginScreenController(
      doLoginWithEmailandpassword: getIt<DoLoginWithEmailandpassword>()));
}
