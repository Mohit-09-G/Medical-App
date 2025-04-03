import 'package:get/get.dart';
import 'package:health_app/config/app_routes.dart';
import 'package:health_app/data/api/doctor_service.dart';
import 'package:health_app/data/models/usermodel.dart';

class DoctorcreenController extends GetxController {
  final DoctorService doctorService = DoctorService();

  final RxList<DoctorsModel> doctorsList = RxList<DoctorsModel>();
  final isLoading = false.obs;

  @override
  void onInit() {
    print(doctorsList.length);
    fetchDoctors();
    uploadAllDoctors();
    super.onInit();
  }

  RxList doctors = [
    {
      'name': 'Dr. John Doe',
      'specialty': 'Cardiologist',
      'Education': 'MD',
      'image': 'assets/images/doctor1.png'
    },
    {
      'name': 'Dr. Jane Smith',
      'specialty': 'Neurologist',
      'Education': 'PhD',
      'image': 'assets/images/doctor2.png'
    },
    {
      'name': 'Dr. Alice Johnson',
      'specialty': 'Pediatrician',
      'Education': 'DDS',
      'image': 'assets/images/doctor3.png'
    },
    {
      'name': 'Dr. Bob Lee',
      'specialty': 'Orthopedic',
      'Education': 'MBBS',
      'image': 'assets/images/doctor4.png'
    },
    {
      'name': 'Dr. William Brown',
      'specialty': 'Dentist',
      'Education': 'DMD',
      'image': 'assets/images/doctor5.png'
    },
    {
      'name': 'Dr. Olivia Clark',
      'specialty': 'Dermatologist',
      'Education': 'DO',
      'image': 'assets/images/doctor6.png'
    },
    {
      'name': 'Dr. Lucas Walker',
      'specialty': 'General Surgeon',
      'Education': 'MD',
      'image': 'assets/images/doctor7.png'
    },
    {
      'name': 'Dr. Emma Moore',
      'specialty': 'Gynecologist',
      'Education': 'PhD',
      'image': 'assets/images/doctor8.png'
    },
    {
      'name': 'Dr. Liam White',
      'specialty': 'Psychiatrist',
      'Education': 'MD',
      'image': 'assets/images/doctor9.png'
    },
    {
      'name': 'Dr. Sophia Harris',
      'specialty': 'Endocrinologist',
      'Education': 'MBBS',
      'image': 'assets/images/doctor10.png'
    },
    {
      'name': 'Dr. James Robinson',
      'specialty': 'Radiologist',
      'Education': 'DMD',
      'image': 'assets/images/doctor11.png'
    },
    {
      'name': 'Dr. Isabella Young',
      'specialty': 'Nephrologist',
      'Education': 'DO',
      'image': 'assets/images/doctor12.png'
    },
    {
      'name': 'Dr. Mason King',
      'specialty': 'Gastroenterologist',
      'Education': 'PhD',
      'image': 'assets/images/doctor13.png'
    },
    {
      'name': 'Dr. Mia Adams',
      'specialty': 'Oncologist',
      'Education': 'MD',
      'image': 'assets/images/doctor14.png'
    },
    {
      'name': 'Dr. Alexander Scott',
      'specialty': 'Pathologist',
      'Education': 'DDS',
      'image': 'assets/images/doctor15.png'
    },
    {
      'name': 'Dr. Charlotte Martinez',
      'specialty': 'Plastic Surgeon',
      'Education': 'DMD',
      'image': 'assets/images/doctor16.png'
    },
    {
      'name': 'Dr. Elijah Perez',
      'specialty': 'Urologist',
      'Education': 'PhD',
      'image': 'assets/images/doctor17.png'
    },
    {
      'name': 'Dr. Amelia Thompson',
      'specialty': 'Ophthalmologist',
      'Education': 'MD',
      'image': 'assets/images/doctor18.png'
    },
    {
      'name': 'Dr. Benjamin Garcia',
      'specialty': 'Rheumatologist',
      'Education': 'MBBS',
      'image': 'assets/images/doctor19.png'
    },
    {
      'name': 'Dr. Evelyn Martinez',
      'specialty': 'Hematologist',
      'Education': 'DDS',
      'image': 'assets/images/doctor20.png'
    },
  ].obs;

  RxInt selectedIndex = 0.obs;

  void updateSelectedIndex(int index) {
    selectedIndex.value = index;
  }

  void navigateToInfo() {
    Get.toNamed(AppRoutes.docInfo);
  }

  void navigateToRating() {
    Get.toNamed(AppRoutes.docRating);
  }

  void navigateToFav() {
    Get.toNamed(AppRoutes.docFav);
  }

  void navigateTodoctor() {
    Get.toNamed(AppRoutes.doctorScreen);
  }

  void navigateTOback() {
    Get.back();
  }

  Future<void> uploadAllDoctors() async {
    try {
      await doctorService.uploadDoctors();
    } catch (e) {
      print('Error uploading doctors: $e');
    }
  }

  Future<void> fetchDoctors() async {
    try {
      isLoading.value = true;
      await doctorService.downloadDoctors();
      doctorsList.value = doctorService.doctorsList;
      print(doctorsList.length);
    } catch (e) {
      isLoading.value = false;
      print('Error fetching doctors: $e');
    } finally {
      isLoading.value = false;
    }
  }

  addDoctors() {
    doctorService.doctorsList.addAll(doctors.map((doctor) {
      return DoctorsModel(
        name: doctor['name'],
        specality: doctor['specialty'],
        educations: doctor['Education'],
      );
    }).toList());
  }
}
